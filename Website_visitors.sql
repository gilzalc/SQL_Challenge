-- day 2
CREATE TABLE website_visitors
(
    visitor_id       INT,
    login_timestamp  TIMESTAMP,
    logout_timestamp TIMESTAMP
);

INSERT INTO website_visitors

VALUES (4, '2024-01-01 09:04:00', '2024-01-03 12:20:00');
VALUES (1, '2024-01-01 09:04:00', '2024-01-02 12:20:00'),
       (1, '2024-01-02 07:37:00', '2024-01-02 08:16:00'),
       (1, '2024-01-03 00:10:00', '2024-01-03 07:44:00'),
       (1, '2024-01-03 03:28:00', '2024-01-03 06:33:00'),
       (2, '2024-01-01 05:23:00', '2024-01-01 11:49:00'),
       (2, '2024-01-01 06:24:00', '2024-01-01 09:52:00'),
       (2, '2024-01-02 10:15:00', '2024-01-02 21:50:00'),
       (2, '2024-01-03 04:00:00', '2024-01-03 15:29:00'),
       (2, '2024-01-03 03:20:00', '2024-01-03 06:12:00'),
       (3, '2024-01-01 10:01:00', '2024-01-01 12:01:00'),
       (3, '2024-01-03 10:17:00', '2024-01-03 21:52:00'),
       (3, '2024-01-03 02:13:00', '2024-01-03 11:49:00'),
       (3, '2024-01-03 00:21:00', '2024-01-03 08:37:00'),
       (1, '2024-01-01 21:04:00', '2024-01-02 12:20:00'),
       (3, '2024-01-01 21:04:00', '2024-01-02 12:20:00');

-- Generate and insert more than 100 rows of sample data into the website_visitors table
INSERT INTO website_visitors (visitor_id, login_timestamp, logout_timestamp)
SELECT
    -- Generate visitor IDs ranging from 1 to 20
    floor(random() * 20) + 1 AS visitor_id,
    -- Generate random login timestamps within a range of 30 days
    '2024-01-01'::timestamp + (floor(random() * 30) || ' days')::interval AS login_timestamp,
    -- Generate random logout timestamps within a range of 1 to 24 hours after login
    '2024-01-01'::timestamp + (floor(random() * 30) || ' days')::interval + (floor(random() * 24) || ' hours')::interval AS logout_timestamp
FROM
    -- Generate 100 rows of data using the GENERATE_SERIES function
    GENERATE_SERIES(1, 240) AS gs(row);



-- version if only days appear in table
WITH AllDays(login_day) AS
         (SELECT DISTINCT DATE(login_timestamp)
          FROM website_visitors
          GROUP BY login_timestamp)


SELECT visitor_id
FROM website_visitors
GROUP BY visitor_id
HAVING COUNT(DISTINCT DATE(login_timestamp)) = (SELECT COUNT(*) FROM AllDays);

-- version if all days in the range of dates
EXPLAIN SELECT visitor_id
FROM website_visitors
GROUP BY visitor_id

HAVING COUNT(DISTINCT DATE(login_timestamp)) =
       (SELECT MAX(login_timestamp::DATE) - MIN(login_timestamp::date) + 1
        FROM website_visitors);


-- Visitor Count:
-- Retrieve the total number of distinct visitors in the dataset.
SELECT COUNT(DISTINCT (visitor_id))
FROM website_visitors AS total_visitors;

-- Average Session Duration:
-- Calculate the average session duration for all visitors (combined).
SELECT ROUND(AVG(EXTRACT(EPOCH FROM logout_timestamp - login_timestamp)), 2) AS total_seconds
FROM website_visitors;

--  Calculate the average session duration for each visitor.

SELECT ROUND(AVG(EXTRACT(EPOCH FROM logout_timestamp - login_timestamp)), 2) AS total_seconds
FROM website_visitors
GROUP BY visitor_id;

-- Find the visitor ID and duration of the longest session in terms of time spent on the website.

SELECT visitor_id,
       MAX(EXTRACT(EPOCH FROM logout_timestamp - login_timestamp)) AS total_seconds
FROM website_visitors
GROUP BY visitor_id
ORDER BY total_seconds DESC
LIMIT 1;

-- Daily Visitor Count:
-- Provide a count of distinct visitors for each day in the dataset.
SELECT DATE(stamp)                AS day,
       COUNT(DISTINCT visitor_id) AS visitor_count
FROM (SELECT visitor_id, login_timestamp AS stamp -- Subquery to combine login and logout to the same stamp
      FROM website_visitors
      UNION ALL
      SELECT visitor_id, logout_timestamp AS stamp
      FROM website_visitors) AS combined_visistamp
GROUP BY DATE(stamp)
ORDER BY DATE(stamp);

-- What If sessions can be more than 24 hours?
WITH RECURSIVE visit_dates AS (
        -- Anchor Member: Select initial session data and convert timestamps to dates
        SELECT visitor_id,
               DATE(login_timestamp)  AS visit_date,
               DATE(logout_timestamp) AS out_stamp,
               DATE(login_timestamp)  AS original_login_timestamp
        FROM website_visitors

        UNION ALL

        -- Recursive Member: Add one day to the previous visit date until logout timestamp is reached
        SELECT visitor_id,
               visit_date + 1,
               out_stamp,
               original_login_timestamp
        FROM visit_dates
        WHERE visit_date + 1 <= out_stamp),

-- Common Table Expression (CTE) to Select Visitor ID and Visit Date
    combined_visits AS (SELECT visitor_id,
                               visit_date
                        FROM visit_dates)
-- Main Query: Count Daily Visitors

SELECT visit_date                 AS DAY,
       COUNT(DISTINCT visitor_id) AS visitor_count
FROM combined_visits
GROUP BY visit_date
ORDER BY DAY;
-- Late-Night Visitors:
-- Identify visitors who logged in between 12:00 AM and 6:00 AM.



-- Concurrent Visitors:
-- Determine the maximum number of simultaneous visitors at any given timestamp.


-- Short Sessions:
-- List the visitor IDs and durations of sessions lasting less than 30 minutes.


-- Visitor Patterns:
-- Find visitors who logged in on consecutive days.


-- Inactive Visitors:
-- List visitors who did not log in for more than 24 hours.


-- Dates Sandbox:
SELECT (date '2024-03-16' - date '2024-03-15');

SELECT AGE('2017-11-26', '2017-08-25');
SELECT (date '2017-11-26' - date '2035-11-01');

SELECT ('2017-06-15'::date + '10 days'::interval)::date AS result_date;
SELECT date(date '2017-06-15' + INTERVAL '2 days') AS result_date;
SELECT date '2017-06-15' + 2 AS result_date;
SELECT DATE_TRUNC('year', '2017-08-26'::timestamp + INTERVAL '100 years') AS datediff_result;

SELECT DATE(DATE '2024-01-30' + INTERVAL '2 years 4 months') AS result_date; -- 2017-06-17
SELECT DATE_PART('Month', date '2024-03-15');
SELECT 10/4.0;

SELECT 10 / '10';
SELECT length((596.0/433333)::varchar);

SELECT * from pg_stats WHERE tablename='website_visitors';


