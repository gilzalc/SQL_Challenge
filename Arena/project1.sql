-----------------------------------
-- Project 1- Arena
-- https://docs.google.com/document/d/1iuqw3fuEu5JMXuozsybjVArag1o-WSSpYV4wZpDdQOU/edit#heading=h.3znysh7
-----------------------------------
-- ;CREATE EXTENSION IF NOT EXISTS tablefunc;
-- SELECT version();
-- SELECT *
-- FROM crosstab(
--          -- Combined gender and age because Crosstab returns only one sub-row for each main row (first gender for each age_group)
--              'SELECT gender::text || '' - '' || age_group::text, credit_card_type, COUNT(player_id)::int AS count
--               FROM players p
--               JOIN paying_method pm USING (player_id)
--               GROUP BY gender, age_group, credit_card_type
--               ORDER BY gender, age_group, credit_card_type'
-- --     ,'SELECT DISTINCT credit_card_type FROM paying_method ORDER BY credit_card_type'
--          ) AS ct (
--                   "gender_age" text,
--                   "americanexpress" int,
--                   "mastercard" int,
--                   "visa" int
--     );

SELECT age_group::text, gender::text, credit_card_type, COUNT(player_id)::int AS count
FROM players p
         JOIN paying_method pm USING (player_id)
GROUP BY age_group, gender, credit_card_type
ORDER BY age_group, gender, credit_card_type;


-- 1
-- לכל שחקן הציגו אמצעי תשלום בודד, לפי  הסדר הבא
-- American express, Mastercard, Visa
WITH t1 AS (SELECT p.player_id,
                   CONCAT(first_name, ' ', last_name),
                   credit_card_type,
                   ROW_NUMBER() OVER (PARTITION BY p.player_id ORDER BY credit_card_type) rn
            FROM players p
                     JOIN paying_method pm ON p.player_id = pm.player_id)
SELECT *
FROM t1
WHERE rn = 1;

--3
SELECT game_name,
       COUNT(*) AS                                num_Sessions,
       DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) "DRANK"
FROM game_sessions gs
         JOIN games g ON g.id = gs.game_id
GROUP BY g.game_name;

--4
SELECT game_name,
       SUM(EXTRACT(EPOCH FROM (gs.session_end_date - gs.session_begin_date)) / 60)::integer AS total_playing_minutes,
       DENSE_RANK() OVER (ORDER BY SUM(EXTRACT(EPOCH FROM session_end_date - session_begin_date) / 60) DESC)
FROM game_sessions gs
         JOIN games g ON g.id = gs.game_id
GROUP BY 1;

--5
WITH t1 AS (SELECT game_name,
                   age_group,
                   SUM(EXTRACT(EPOCH FROM (gs.session_end_date - gs.session_begin_date)) / 60)::integer                                      AS total_playing_minutes,
                   DENSE_RANK()
                   OVER (PARTITION BY age_group ORDER BY SUM(EXTRACT(EPOCH FROM session_end_date - session_begin_date) / 60) ::integer DESC) AS DRANK
            FROM game_sessions gs
                     JOIN games g ON g.id = gs.game_id
                     JOIN players p ON p.player_id = gs.player_id
            GROUP BY 1, 2)
SELECT *
FROM t1
WHERE DRANK = 1;
--
WITH t1 AS (SELECT gs.session_id,
                   action_id,
                   action_type,
                   CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END AS     amount,
                   SUM(CASE WHEN action_type = 'loss' THEN -amount ELSE amount END)
                   OVER (PARTITION BY gs.session_id ORDER BY action_id )           AS     balance,
                   ROW_NUMBER() OVER (PARTITION BY gs.session_id ORDER BY action_id DESC) rn
            FROM session_details sd
                     JOIN game_sessions gs ON gs.session_id = sd.session_id)
SELECT COUNT(CASE WHEN balance < 0 THEN 1 END) AS total_losses,
       COUNT(CASE WHEN balance > 0 THEN 1 END) AS total_gains,
       COUNT(CASE WHEN balance = 0 THEN 1 END) AS total_draws
FROM t1
WHERE rn = 1;


--8
-- Grouped by gender and age group
WITH t1 AS (SELECT gs.session_id,
                   action_id,
                   action_type,
                   gender,
                   age_group,
                   CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END AS     amount,
                   SUM(CASE WHEN action_type = 'loss' THEN -amount ELSE amount END)
                   OVER (PARTITION BY gs.session_id ORDER BY action_id )           AS     balance,
                   ROW_NUMBER() OVER (PARTITION BY gs.session_id ORDER BY action_id DESC) rn
            FROM session_details sd
                     JOIN game_sessions gs USING (session_id)
                     JOIN players p USING (player_id))
SELECT gender,
       age_group,
       COUNT(CASE WHEN balance < 0 THEN 1 END) AS total_losses,
       COUNT(CASE WHEN balance > 0 THEN 1 END) AS total_gains,
       COUNT(CASE WHEN balance = 0 THEN 1 END) AS total_draws
FROM t1
WHERE rn = 1
GROUP BY gender, age_group
;


-- 9 Rolling sum for sessions for each player
WITH t1 AS (SELECT gs.session_id,
                   action_id,
                   action_type,
                   player_id,
                   CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END AS     amount,
                   SUM(CASE WHEN action_type = 'loss' THEN -amount ELSE amount END)
                   OVER (PARTITION BY gs.session_id ORDER BY action_id )           AS     balance,
                   ROW_NUMBER() OVER (PARTITION BY gs.session_id ORDER BY action_id DESC) rn
            FROM session_details sd
                     JOIN game_sessions gs USING (session_id)
                     JOIN players p USING (player_id))
SELECT player_id,
       balance,
       SUM(balance) OVER (PARTITION BY player_id ORDER BY session_id)
FROM t1
WHERE rn = 1;

--10

WITH t1 AS (SELECT gs.session_id,
                   action_id,
                   action_type,
                   CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END AS     amount,
                   SUM(CASE WHEN action_type = 'loss' THEN -amount ELSE amount END)
                   OVER (PARTITION BY gs.session_id ORDER BY action_id )           AS     balance,
                   ROW_NUMBER() OVER (PARTITION BY gs.session_id ORDER BY action_id DESC) rn
            FROM session_details sd
                     JOIN game_sessions gs ON gs.session_id = sd.session_id)
SELECT SUM(CASE WHEN balance < 0 THEN -balance END)                                                AS gains,
       SUM(CASE WHEN balance > 0 THEN -balance END)                                                AS loss,
       SUM(CASE WHEN balance < 0 THEN -balance END) + SUM(CASE WHEN balance > 0 THEN -balance END) AS total
FROM t1
WHERE rn = 1;


-- grouped by year and quarter:
WITH t1 AS (SELECT gs.session_id,
                   action_id,
                   action_type,
                   session_begin_date,
                   CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END AS     amount,
                   SUM(CASE WHEN action_type = 'loss' THEN -amount ELSE amount END)
                   OVER (PARTITION BY gs.session_id ORDER BY action_id )           AS     balance,
                   ROW_NUMBER() OVER (PARTITION BY gs.session_id ORDER BY action_id DESC) rn
            FROM session_details sd
                     JOIN game_sessions gs ON gs.session_id = sd.session_id)
SELECT EXTRACT(YEAR FROM session_begin_date)            AS                                              year,
       EXTRACT(QUARTER FROM session_begin_date)         AS                                              q,
       SUM(CASE WHEN balance < 0 THEN balance END) * -1 AS                                              gains,
       SUM(CASE WHEN balance > 0 THEN balance END) * -1 AS                                              loss,
       (SUM(CASE WHEN balance < 0 THEN balance END) * -1) - SUM(CASE WHEN balance > 0 THEN balance END) total
FROM t1
WHERE rn = 1
GROUP BY 1, 2;



WITH balance_cte AS (SELECT session_id,
                            action_id,
                            SUM(CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END)
                            OVER (PARTITION BY session_id ORDER BY action_id)                   AS balance,
                            ROW_NUMBER() OVER (PARTITION BY session_id ORDER BY action_id DESC) AS rn_action
                     FROM session_details)
SELECT EXTRACT(YEAR FROM gs.session_begin_date)                AS year,
       EXTRACT(QUARTER FROM gs.session_begin_date)             AS quarter,
       SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) AS house_gains,
       SUM(CASE WHEN balance > 0 THEN balance * -1 ELSE 0 END) AS house_losses,
       SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) -
       SUM(CASE WHEN balance > 0 THEN balance ELSE 0 END)      AS overall_gain_loss
FROM balance_cte ra
         JOIN game_sessions gs ON ra.session_id = gs.session_id
WHERE rn_action = 1
GROUP BY EXTRACT(YEAR FROM gs.session_begin_date), EXTRACT(QUARTER FROM gs.session_begin_date)
ORDER BY EXTRACT(YEAR FROM gs.session_begin_date), EXTRACT(QUARTER FROM gs.session_begin_date);

--12


WITH balance_cte AS (SELECT session_id,
                            action_id,
                            SUM(CASE WHEN action_type = 'loss' THEN amount * -1 ELSE amount END)
                            OVER (PARTITION BY session_id ORDER BY action_id)                   AS balance,
                            ROW_NUMBER() OVER (PARTITION BY session_id ORDER BY action_id DESC) AS rn_action
                     FROM session_details),
    t2 as (
SELECT EXTRACT(YEAR FROM gs.session_begin_date)                AS year,
       EXTRACT(MONTH FROM gs.session_begin_date)               AS quarter,
       SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) AS house_gains,
       SUM(CASE WHEN balance > 0 THEN balance * -1 ELSE 0 END) AS house_losses,
       SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) -
       SUM(CASE WHEN balance > 0 THEN balance ELSE 0 END)      AS overall_gain_loss,
       DENSE_RANK() OVER (ORDER BY SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) -
                                   SUM(CASE WHEN balance > 0 THEN balance ELSE 0 END)) AS loss_rank,
    DENSE_RANK() OVER (ORDER BY SUM(CASE WHEN balance < 0 THEN balance * -1 ELSE 0 END) -
                                   SUM(CASE WHEN balance > 0 THEN balance ELSE 0 END) DESC ) AS profit_rank



FROM balance_cte ra
         JOIN game_sessions gs ON ra.session_id = gs.session_id
WHERE rn_action = 1
GROUP BY EXTRACT(YEAR FROM gs.session_begin_date), EXTRACT(MONTH FROM gs.session_begin_date))
SELECT * ,
CASE WHEN loss_rank<=3 then 'Loss top-' || loss_rank::varchar ELSE 'Gain top-' || profit_rank::varchar end as tag
       FROM t2
WHERE loss_rank <= 3 or profit_rank <=3
ORDER BY CASE WHEN overall_gain_loss >0 then 1 else 0 END DESC , tag;
-- GROUP BY EXTRACT(YEAR FROM gs.session_begin_date), EXTRACT(MONTH FROM gs.session_begin_date)
-- ORDER BY EXTRACT(YEAR FROM gs.session_begin_date), EXTRACT(MONTH FROM gs.session_begin_date);