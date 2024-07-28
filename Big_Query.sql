-- Explanation about Google analytics Schema
-- https://support.google.com/analytics/answer/3437719?hl=en
-- קיצורים בביג קוורי
-- https://daniel-data.co.il/%d7%a7%d7%99%d7%a6%d7%95%d7%a8%d7%99-%d7%9e%d7%a7%d7%9c%d7%93%d7%aa-%d7%a1%d7%99%d7%a0%d7%98%d7%a7%d7%a1%d7%98-%d7%95%d7%a4%d7%95%d7%a0%d7%a7%d7%a6%d7%99%d7%95%d7%aa-%d7%91sql-%d7%a9%d7%9c%d7%90/
-- חלק 2
-- https://daniel-data.co.il/%d7%a7%d7%99%d7%a6%d7%95%d7%a8%d7%99-%d7%9e%d7%a7%d7%9c%d7%93%d7%aa-%d7%a1%d7%99%d7%a0%d7%98%d7%a7%d7%a1%d7%98-%d7%95%d7%a4%d7%95%d7%a0%d7%a7%d7%a6%d7%99%d7%95%d7%aa-%d7%91-sql-%d7%a9%d7%9c%d7%90/
SELECT distinct totals.timeOnSite
FROM example_dataset.My_Google_Table
order by 1 desc;

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
SELECT COUNT(*)               AS total_sessions,
       SUM(totals.timeOnSite) AS total_pageviews
FROM `example_dataset.My_Google_Table`;

-- Location Insights: Find the top 5 countries with the most website visitors.
select geoNetwork.country as country
from example_dataset.My_Google_Table
group by country
order by COUNT(*) desc;


-- SELECT * EXCEPT (visitorId,visitNumber) from example_dataset.My_Google_Table;
-- SELECT visitNumber,visitId from example_dataset.My_Google_Table;
-- insert into example_dataset.using_check1 values (1,1501591568);
-- SELECT visitNumber,visitId from example_dataset.using_check1;
-- SELECT * from using_check1;
--
-- select * from example_dataset.My_Google_Table T1 left join example_dataset.using_check1 T2 using (visitNumber, visitId);



-- Session Duration Distribution: Analyze the distribution of session durations
-- (e.g., how many sessions lasted less than 1 minute, 1-5 minutes, etc.).
SELECT visitNumber,visitStartTime,
       SUM(visitStartTime) OVER (PARTITION BY visitNumber order by visitNumber) AS total_units_sold
FROM example_dataset.My_Google_Table;


SELECT *
-- DATE(covid.date ) AS extracted_date, terms.week


--        EXTRACT(year from date)
FROM `bigquery-public-data.covid19_italy.data_by_province` as covid
         join `bigquery-public-data.google_trends.top_terms` terms on DATE( covid.date)=terms.week
     LIMIT 30;


select * FROM `bigquery-public-data.covid19_italy.data_by_province` as covid
order by date desc
limit 100;


CREATE TABLE example_dataset.my_new_table
AS;

SELECT * from example_dataset.my_new_table
limit 80;
