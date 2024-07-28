/*
 new companies challenge
 https://www.hackerrank.com/challenges/the-company/problem
 */
 /*


CREATE TABLE Company
(
    company_code VARCHAR(2) PRIMARY KEY,
    founder      VARCHAR(50)
);
CREATE TABLE Lead_Manager
(
    lead_manager_code VARCHAR(3) PRIMARY KEY,
    company_code      VARCHAR(2) REFERENCES Company (company_code)
);
CREATE TABLE Senior_Manager
(
    senior_manager_code VARCHAR(3) PRIMARY KEY,
    lead_manager_code   VARCHAR(3) REFERENCES Lead_Manager (lead_manager_code),
    company_code        VARCHAR(2) REFERENCES Company (company_code)
);
CREATE TABLE Manager
(
    manager_code        VARCHAR(2) PRIMARY KEY,
    senior_manager_code VARCHAR(3) REFERENCES Senior_Manager (senior_manager_code),
    lead_manager_code   VARCHAR(3) REFERENCES Lead_Manager (lead_manager_code),
    company_code        VARCHAR(2) REFERENCES Company (company_code)
);
CREATE TABLE Employee4
(
    employee_code       VARCHAR(2) PRIMARY KEY,
    manager_code        VARCHAR(2) REFERENCES Manager (manager_code),
    senior_manager_code VARCHAR(3) REFERENCES Senior_Manager (senior_manager_code),
    lead_manager_code   VARCHAR(3) REFERENCES Lead_Manager (lead_manager_code),
    company_code        VARCHAR(2) REFERENCES Company (company_code)
);


INSERT INTO Company (company_code, founder)
VALUES ('C3', 'Erice'),
       ('C1', 'Monika'),
       ('C2', 'Samantha');
INSERT INTO Lead_Manager (lead_manager_code, company_code)
VALUES ('LM1', 'C1'),
       ('LM2', 'C2');
INSERT INTO Senior_Manager (senior_manager_code, lead_manager_code, company_code)
VALUES ('SM1', 'LM1', 'C1'),
       ('SM2', 'LM1', 'C1'),
       ('SM3', 'LM2', 'C2');
INSERT INTO Manager (manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES ('M1', 'SM1', 'LM1', 'C1'),
       ('M2', 'SM3', 'LM2', 'C2'),
       ('M3', 'SM3', 'LM2', 'C2');
INSERT INTO Employee4 (employee_code, manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES ('E4', 'M3', 'SM3', 'LM2', 'C2');

  */
SELECT Company.company_code,
       MAX(founder)                           AS max_founder,
       COUNT(DISTINCT lm.lead_manager_code)   AS lead_manager_count,
       COUNT(DISTINCT sm.senior_manager_code) AS senior_manager_count,
       COUNT(DISTINCT m.manager_code)         AS manager_count,
       COUNT(DISTINCT e.employee_code)        AS employee_count
FROM Company
         JOIN Lead_Manager lm USING (company_code)
         JOIN Senior_Manager sm USING (company_code)
         JOIN Manager m USING (company_code)
         JOIN Employee4 e USING (company_code)
GROUP BY Company.company_code
ORDER BY Company.company_code;

/*
15 days of Learning
https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true
 */
CREATE TABLE Submissions
(
    submission_id   INT PRIMARY KEY,
    hacker_id       INT,
    submission_date DATE,
    score           INT
);
--
CREATE TABLE hackers
(
    hacker_id INT PRIMARY KEY,
    name      VARCHAR(255)
);
--
INSERT INTO Submissions (submission_id, hacker_id, submission_date, score)
VALUES (8494, 20703, '2016-03-01', 0),
       (22403, 53473, '2016-03-01', 15),
       (23965, 79722, '2016-03-01', 60),
       (30173, 36396, '2016-03-01', 70),
       (34928, 20703, '2016-03-02', 0),
       (38740, 15758, '2016-03-02', 60),
       (42769, 79722, '2016-03-02', 25),
       (44364, 79722, '2016-03-02', 60),
       (45440, 20703, '2016-03-03', 0),
       (49050, 36396, '2016-03-03', 70),
       (50273, 79722, '2016-03-03', 5),
       (50344, 20703, '2016-03-04', 0),
       (51360, 44065, '2016-03-04', 90),
       (54404, 53473, '2016-03-04', 65),
       (61533, 79722, '2016-03-04', 45),
       (72852, 20703, '2016-03-05', 0),
       (74546, 38289, '2016-03-05', 0),
       (76487, 62529, '2016-03-05', 0),
       (82439, 36396, '2016-03-05', 10),
       (90006, 36396, '2016-03-05', 40),
       (90404, 20703, '2016-03-06', 0);
--
INSERT INTO hackers (hacker_id, name)
VALUES (15758, 'Rose'),
       (20703, 'Angela'),
       (36396, 'Frank'),
       (38289, 'Patrick'),
       (44065, 'Lisa'),
       (53473, 'Kimberly'),
       (62529, 'Bonnie'),
       (79722, 'Michael');


WITH RECURSIVE
    T1 AS (SELECT 1 AS num, date '2016-03-01' AS cur_date, COUNT(DISTINCT hacker_id) AS hacker_num
           FROM Submissions
           WHERE submission_date <= '2016-03-01'

           UNION ALL

           SELECT num + 1,
                  cur_date + 1,
                  (SELECT COUNT(*)
                   FROM (SELECT COUNT(DISTINCT submission_date)
                         FROM submissions
                         WHERE submission_date <= cur_date + 1
                         GROUP BY hacker_id
                         HAVING COUNT(DISTINCT submission_date) = (num + 1)) s)
           FROM T1
           WHERE num < 16),
    T2 AS
        (SELECT submission_date,
                MODE() WITHIN GROUP (ORDER BY hacker_id) AS id,
                MODE() WITHIN GROUP (ORDER BY name)      AS hack_name
         FROM submissions
                  JOIN Hackers USING (hacker_id)
         GROUP BY submission_date)
SELECT T1.cur_date, T1.hacker_num, T2.id, T2.hack_name
FROM T1
         JOIN T2 ON T1.cur_date = T2.submission_date;
UPDATE hackers
SET Name = 'ROSA'
WHERE hacker_id=15758;


CREATE VIEW myView AS
    SELECT s.hacker_id,s.score,s.submission_date,h.name FROM submissions s,hackers h ;
/*
Project planning challenge
https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true
 */
-- CREATE TABLE projects
-- (
--     Task_ID    INT PRIMARY KEY,
--     Start_Date DATE,
--     End_Date   DATE
-- );

-- INSERT INTO projects (Task_ID, Start_Date, End_Date)
-- VALUES
--     (1, '2015-10-01', '2015-10-02'),
--     (2, '2015-10-02', '2015-10-03'),
--     (3, '2015-10-03', '2015-10-04'),
--     (4, '2015-10-13', '2015-10-14'),
-- (5, '2015-10-14', '2015-10-15');
--     (6, '2015-10-28', '2015-10-29'),
--     (7, '2015-10-30', '2015-10-31');

WITH lag_table AS (SELECT *,
                          LAG(end_date, 1) OVER (ORDER BY End_Date) AS prev_task_date
                   FROM projects),

     T2 AS (SELECT *,
                   SUM(CASE WHEN End_Date - 1 <> prev_task_date THEN 1 ELSE 0 END)
                   OVER (ORDER BY End_Date) AS flag
            FROM lag_table),

     final_TBL AS (SELECT MIN(end_date) - 1 AS s, MAX(End_Date) AS e, COUNT(*) AS project_days
                   FROM T2
                   GROUP BY flag)
SELECT s, e
FROM final_TBL
ORDER BY project_days, s;


/*
string formatting- PADS
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
 */

 /*
CREATE TABLE Occupations
(
Name       VARCHAR(50),
Occupation VARCHAR(50)
);
INSERT INTO Occupations (Name, Occupation)
VALUES ('Samantha', 'Doctor'),
('Julia', 'Actor'),
('Maria', 'Actor'),
('Meera', 'Singer'),
('Ashely', 'Professor'),
('Ketty', 'Professor'),
('Christeen', 'Professor'),
('Jane', 'Actor'),
('Jenny', 'Doctor'),
('Priya', 'Singer');
  */


SELECT Name || '(' || SUBSTRING(Occupation, 1, 1) || ')'
FROM (SELECT *
      FROM occupations
      ORDER BY Name) s
UNION ALL
(SELECT
        FORMAT('There are a total of %s %ss.', count(*), lower(max(occupation)))
            FROM Occupations
            GROUP BY occupation
            ORDER BY COUNT(*), LOWER(occupation))


