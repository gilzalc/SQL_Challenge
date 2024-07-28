-- Dates Sandbox:
-- EXTRACT:
SELECT EXTRACT(MINUTES FROM timestamp '2024-03-16 12:44:00');
SELECT EXTRACT(MONTH FROM timestamp '2024-03-15') AS month_created;
SELECT EXTRACT(MONTH FROM date '2024-03-15') AS month_created;
SELECT EXTRACT(HOUR FROM INTERVAL '100 years 11 months 21 days 2 hours');
-- explicit casting
-- SELECT (login_timestamp::time)
-- FROM website_visitors;


-- Interval
SELECT (timestamp '2024-03-16' - timestamp '2024-03-15'); -- returns INTERVAL
SELECT ('2017-06-15'::date + ' 10 days '::INTERVAL)::date AS result_date;
SELECT (date '2017-06-15' + INTERVAL ' 2 days ') AS result_date;
SELECT date '2017-06-15' + 2 AS result_date;
SELECT DATE_TRUNC('year', '2017-08-26'::timestamp + INTERVAL ' 100 years ') AS datediff_result;

SELECT DATE(DATE '2024 - 01 - 30 ' + INTERVAL ' 2 years 4 months ') AS result_date; -- 2017-06-17
SELECT CURRENT_TIMESTAMP - INTERVAL '1 day';
SELECT LENGTH((596.0 / 433333)::varchar);
SELECT timestamp '2024-03-16 00:00:10' + INTERVAL '1 day';
-- AGE: Returns interval representing the difference between the timestamps/dates.
SELECT AGE(date '2024-03-16 00:00:10', timestamp '2024-03-17 00:00:25');
--Calculating difference in minutes/seconds: EPOCH
SELECT EXTRACT(EPOCH FROM '2024-03-16 00:04:25'::timestamp - '2024-03-16 00:00:10'::timestamp)/60;

SELECT date '2020-02-05' - 2 >= date '2020-02-02';

-- SELECT c.candidate_id,candidate_name, application_date
-- FROM candidates c join interviews i using (candidate_id)
-- GROUP BY 1,2,3
-- HAVING (min (interview_date) - 21 >= application_date
--     and min(interview_date) <= date '2024-07-14')
--     OR min(grade) < 9
-- UNION
-- SELECT candidate_id,candidate_name, application_date
-- FROM candidates c2
-- WHERE NOT EXISTS(SELECT 1 FROM interviews i2 where i2.candidate_id= c2.candidate_id);