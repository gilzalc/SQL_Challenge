-- Explanation about Google analytics Schema
-- https://support.google.com/analytics/answer/3437719?hl=en

SELECT distinct totals.timeOnSite
FROM example_dataset.My_Google_Table order by 1 desc;



SELECT trafficSource.source AS source,
       COUNT(*)             AS visits
FROM example_dataset.My_Google_Table
GROUP BY trafficSource.source
ORDER BY visits DESC;

SELECT SUM(totals.visits)     AS totalSessions,
       device.operatingSystem AS os
FROM example_dataset.My_Google_Table
WHERE device.operatingSystem IS NOT NULL
GROUP BY os
ORDER BY totalSessions DESC;

SELECT AVG(totals.transactionRevenue) AS totalSessions,
       device.operatingSystem         AS os,
       COUNT(*)
FROM example_dataset.My_Google_Table
WHERE device.operatingSystem IS NOT NULL
GROUP BY os
ORDER BY totalSessions DESC;


SELECT column_name,
       data_type
FROM `example_dataset.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'My_Google_Table';


# Find the total number of sessions and pageviews for the day
SELECT COUNT(*)              AS total_sessions,
       SUM(totals.timeOnSite) AS total_pageviews
FROM `example_dataset.My_Google_Table`;

-- Location Insights: Find the top 5 countries with the most website visitors.
select geoNetwork.country as country
from example_dataset.My_Google_Table
group by country
order by COUNT(*) desc;

-- Session Duration Distribution: Analyze the distribution of session durations
-- (e.g., how many sessions lasted less than 1 minute, 1-5 minutes, etc.).


