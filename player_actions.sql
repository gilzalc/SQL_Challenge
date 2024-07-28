-- -- create table player_actions (
-- -- action_id INT,
-- -- player_id INT,
-- -- action_desc VARCHAR(40) // UIDs (Universally Unique Identifiers).
-- -- UUIDs are 128-bit identifiers that are unique across both space and time, typically represented as a 32-character hexadecimal string, such as 'de51caf1-232f-4078-9959-c83da9c3e4f5'.
-- -- );
-- -- insert into player_actions (action_id, player_id, action_desc) values (1, 3, 'de51caf1-232f-4078-9959-c83da9c3e4f5');
-- -- insert into player_actions (action_id, player_id, action_desc) values (2, 5, 'ea65671a-0744-44df-b25d-ce770b30b34a');
-- -- insert into player_actions (action_id, player_id, action_desc) values (3, 4, '557b5721-3f2a-4686-932c-eafb453691ed');
-- -- insert into player_actions (action_id, player_id, action_desc) values (4, 4, '0d131074-bcd4-4ea2-ae27-f782e817e93c');
-- -- insert into player_actions (action_id, player_id, action_desc) values (5, 4, '7447a874-1fed-4e0d-b12a-4c203da7d89c');
-- -- insert into player_actions (action_id, player_id, action_desc) values (6, 2, 'bad98aab-18ed-4c62-af6d-8a57151b30d5');
-- -- insert into player_actions (action_id, player_id, action_desc) values (7, 5, '3e0bcf98-234c-4493-a105-9ce4693ee93e');
-- -- insert into player_actions (action_id, player_id, action_desc) values (8, 2, 'c3dc7fec-03f2-4c12-ace0-e7929bf51659');
-- -- insert into player_actions (action_id, player_id, action_desc) values (9, 2, '373fbb29-b93a-4abd-a76f-ad3503ca7226');
-- insert into player_actions (action_id, player_id, action_desc) values (11, 3, '844f60ef-fba8-41f7-bd2c-391d7b8a7136');
--
-- -- ----------------------------------------------------------------------------------------------------------
-- -- Query to find player with most successive actions - First approach Row_number()
--
--

WITH sequence_number AS (SELECT *,
                                ROW_NUMBER() OVER (ORDER BY action_id) -
                                ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY action_id) AS seq
                         FROM player_actions),

     count_per_user AS (SELECT player_id, seq, COUNT(*) AS actions_count
                        FROM sequence_number
                        GROUP BY player_id, seq
                        ORDER BY actions_count DESC
                        limit 1)
SELECT * FROM count_per_user;






-- SELECT player_id
-- FROM (SELECT player_id,
--              RANK() OVER (ORDER BY MAX(actions_count) DESC) AS rank
--       FROM count_per_user
--       GROUP BY player_id) AS ranked_players
-- WHERE rank = 1;


-- Second approach- LAG() version:
WITH lag_table AS (SELECT *,
                          LAG(player_id, 1) OVER (ORDER BY action_id) AS prev_player_id
                   FROM player_actions),

     consecutive_actions AS (SELECT *,
                                    SUM(CASE WHEN player_id <> prev_player_id THEN 1 ELSE 0 END)
                                    OVER (PARTITION BY player_id ORDER BY action_id) AS flag
                             FROM lag_table),

     final_TBL AS (SELECT *, RANK() OVER (PARTITION BY player_id, flag ORDER BY action_id) expected_result
                   FROM consecutive_actions
                   ORDER BY action_id)
-- SELECT * FROM consecutive_actions;
SELECT player_id, MAX(expected_result) as maximum_succesive
FROM final_TBL
GROUP BY player_id
HAVING MAX(expected_result) = (SELECT MAX(expected_result) FROM final_TBL);

