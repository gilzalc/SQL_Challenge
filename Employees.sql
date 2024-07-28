-- create table employees (
--                            employee_id SERIAL PRIMARY KEY, -- Automatic employee ID
--                            full_name VARCHAR(50),
-- department_name VARCHAR(50)
-- );
--
--
-- insert into employees (full_name, department_name) values ('Trace Solano', 'Sales');
-- insert into employees (full_name, department_name) values ('Ike Tafani', 'Engineering');
-- insert into employees (full_name, department_name) values ('Doll Elverstone', 'Human Resources');
-- insert into employees (full_name, department_name) values ('Ludwig Comelli', 'Business Development');
-- insert into employees (full_name, department_name) values ('Herb Rissom', 'Business Development');
-- insert into employees (full_name, department_name) values ('Ediva Blaze', 'Sales');
-- insert into employees (full_name, department_name) values ('Millicent Debill', 'Engineering');
-- insert into employees (full_name, department_name) values ('Dietrich Christophle', 'Human Resources');
-- insert into employees (full_name, department_name) values ('Odetta Scotney', 'Engineering');
-- insert into employees (full_name, department_name) values ('Alvera Kezor', 'Engineering');
-- insert into employees (full_name, department_name) values ('Linc Blasio', 'Human Resources');
-- insert into employees (full_name, department_name) values ('Gray Moakes', 'Business Development');
-- insert into employees (full_name, department_name) values ('Anthiathia Bruckental', 'Business Development');
INSERT INTO employees (full_name, department_name)
VALUES ('Gray John', 'Business Development');

-- Employee with the longest name
SELECT employee_id, LENGTH(full_name) AS len
FROM employees
WHERE LENGTH(full_name) >= ALL
      (SELECT LENGTH(full_name) FROM employees);

-- Create a query that sorts the names of employees
-- in each department in a separate column.
-- Sort the names of employees alphabetically in each column.

-- Version if the departments are known:
WITH TBL AS (SELECT full_name,
                    department_name,
                    ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY full_name) AS Row_Num
             FROM employees)
-- SELECT * FROM TBL;
SELECT Row_Num,max(full_name),
       max(CASE WHEN department_name = 'Business Development' THEN full_name END) AS "Business Development",
       MAX(CASE WHEN department_name = 'Engineering' THEN full_name END)          AS "Engineering",
       MAX(CASE WHEN department_name = 'Human Resources' THEN full_name END)      AS "Human Resources",
       MAX(CASE WHEN department_name = 'Sales' THEN full_name END)                AS "Sales"
FROM TBL
GROUP BY Row_Num
ORDER BY Row_Num;



ORDER BY rn;

-- PL/PGSQL dynamic version that creates a temporary table with the results, named TEMP_TABLE
DO
$$
    DECLARE
        sql_query  TEXT;
        dept_names TEXT[];
        dep_name   TEXT; -- Add data type declaration for the loop variable

    BEGIN
        DROP TABLE IF EXISTS TEMP_TABLE;
        -- Retrieve distinct department names from the employees table
        SELECT ARRAY(SELECT DISTINCT department_name FROM employees ORDER BY department_name)
        INTO dept_names;

        -- Start building the dynamic SQL query
        sql_query := '
        WITH Tbl AS (
            SELECT full_name, department_name, ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY full_name) AS row_num
            FROM employees
        )
        SELECT ';

        -- Generate dynamic CASE statements for each distinct department_name
        FOREACH dep_name IN ARRAY dept_names
            LOOP
                sql_query := sql_query || 'MAX(CASE WHEN department_name = ''' || dep_name ||
                             ''' THEN full_name END) AS "' || dep_name || '", ';
            END LOOP;

        -- Remove the trailing comma and space
        sql_query := LEFT(sql_query, LENGTH(sql_query) - 2);

        -- Append the rest of the query
        sql_query := sql_query || '
        FROM Tbl
        GROUP BY row_num
        ORDER BY row_num;';

        -- Print the dynamic SQL query
        RAISE NOTICE 'Dynamic SQL Query: %', sql_query;

        -- Execute the dynamic SQL query
        EXECUTE 'CREATE TABLE TEMP_TABLE AS ' || sql_query;
    END
$$ LANGUAGE PLPGSQL;
-- Now query it to get the results
SELECT *
FROM TEMP_TABLE;


-- Identify employees with duplicate full names.
SELECT full_name,
       COUNT(*) AS duplicate_count
FROM employees
GROUP BY full_name
HAVING COUNT(*) > 1;


-- Query pairs of employees with same first name but different last name (assuming no middle names)
SELECT e1.employee_id || ' from ' || e1.department_name AS first_emp,
       e2.employee_id || ' from ' || e2.department_name AS second_emp
FROM employees e1
         INNER JOIN employees e2
                    ON e1.employee_id < e2.employee_id
WHERE SPLIT_PART(e1.full_name, ' ', 1) = SPLIT_PART(e2.full_name, ' ', 1)
  AND SPLIT_PART(e1.full_name, ' ', 2) <> SPLIT_PART(e2.full_name, ' ', 2);

-- with middle names: Functions SUBSTRING,SPLIT_PART,LENGTH
SELECT e1.employee_id || ' from ' || e1.department_name AS first_emp,
       e2.employee_id || ' from ' || e2.department_name AS second_emp
FROM employees e1
         INNER JOIN employees e2
                    ON e1.employee_id < e2.employee_id
WHERE SPLIT_PART(e1.full_name, ' ', 1) LIKE SPLIT_PART(e2.full_name, ' ', 1)

  AND SUBSTRING(e1.full_name, LENGTH(SPLIT_PART(e1.full_name, ' ', 1)) + 2) <>
      SUBSTRING(e2.full_name, LENGTH(SPLIT_PART(e2.full_name, ' ', 1)) + 2);



-- Create table Sailors(
--   sid integer,
--   sname varchar,
--   rating integer,
--   age real);
--
-- Create table Boats(
--   bid integer,
--   bname varchar,
--   color varchar);
--
-- Create table Reserves(
--   sid integer,
--   bid integer,
--   day date);


-- insert into Sailors values(22, 'Alice', 7, 45);
-- insert into Sailors values(31, 'Barbara', 8, 55.5);
-- insert into Sailors values(38, 'Carol', 10, 35);
-- insert into Sailors values(70, 'Alice', 10, 25);
--
-- insert into Boats values(101, 'Iron Man', 'red');
-- insert into Boats values(103, 'Moonlight', 'green');
--
-- insert into Reserves values(22, 101, '1/1/2017');
-- insert into Reserves values(58, 103, '2/3/2017');

INSERT INTO Reserves2
VALUES (22, 101, INTERVAL '2 minutes');
INSERT INTO Reserves2
VALUES (58, 103, INTERVAL '2 days');


CREATE TABLE employees1
(
    employee_id   integer,
    name          VARCHAR(50),
    department_id integer
);

CREATE TABLE departments1
(
    department_id   integer,
    department_name VARCHAR(50)
);

INSERT INTO employees1
VALUES (1, 'John', 2);
INSERT INTO employees1
VALUES (2, 'Alice', 3);
INSERT INTO employees1
VALUES (3, 'Bob', 1);
INSERT INTO employees1
VALUES (4, 'Jay', 2);
INSERT INTO employees1
VALUES (5, 'Dog', 3);
INSERT INTO employees1
VALUES (6, 'Nate', 1);
INSERT INTO employees1
VALUES (7, 'Agam', 1);
INSERT INTO employees1
VALUES (8, 'Noa', 3);

INSERT INTO employees1
VALUES (9, 'NoNo', 3);

INSERT INTO departments1
VALUES (1, 'Engineering');
INSERT INTO departments1
VALUES (2, 'Marketing');
INSERT INTO departments1
VALUES (3, 'Sales');
INSERT INTO departments1
VALUES (4, 'R&D');
INSERT INTO departments1
VALUES (NULL, 'R&D');


SELECT *
FROM employees1
         RIGHT JOIN departments1 ON departments1.department_id <= employees1.employee_id;

SELECT COUNT(*)
FROM departments1;


SELECT AVG(employee_id) OVER (PARTITION BY department_id ORDER BY employee_id DESC ) AS sm,
       department_id,
       employee_id,
       name
FROM employees1
ORDER BY department_id DESC, 1;


WITH percentile_ranks AS (SELECT *,
                                 PERCENT_RANK() OVER (PARTITION BY department_id ORDER BY employee_id) *
                                 100 AS percentile_score
                          FROM employees1)
SELECT department_id, employee_id, name, percentile_score
FROM percentile_ranks
-- WHERE percentile_score > 35
ORDER BY department_id DESC, percentile_score;


SELECT *, LEAD(employee_id, 1, -1) OVER (PARTITION BY department_id ORDER BY employee_id)
FROM employees1;
SELECT *, FIRST_VALUE(employee_id) OVER (PARTITION BY department_id ORDER BY employee_id)
FROM employees1;


SELECT (SELECT employee_id FROM employees1 WHERE employee_id = 88)


CREATE TABLE Employee2
(
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(50)    NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);

-- Insert sample data
INSERT INTO Employee2 (name, salary)
VALUES ('John Doe', 50000.00),
       ('Jane Smith', 60000.00),
       ('Bob Johnson', 55000.00),
       ('Sarah Lee', 70000.00),
       ('Tom Wilson', 45000.00);


SELECT *
FROM Employee2;


(SELECT DISTINCT Salary
 FROM Employee2
 ORDER BY salary DESC
 LIMIT 1 OFFSET 1)


CREATE TABLE IF NOT EXISTS Signups
(
    user_id    int,
    time_stamp date
);

CREATE TABLE IF NOT EXISTS Confirmations
(
    user_id    int,
    time_stamp date,
    action     VARCHAR(50) NOT NULL
);
TRUNCATE TABLE Signups;

INSERT INTO Signups (user_id, time_stamp)
VALUES ('3', '2020-03-21 10:16:13');
INSERT INTO Signups (user_id, time_stamp)
VALUES ('7', '2020-01-04 13:57:59');
INSERT INTO Signups (user_id, time_stamp)
VALUES ('2', '2020-07-29 23:09:44');
INSERT INTO Signups (user_id, time_stamp)
VALUES ('6', '2020-12-09 10:39:37');
TRUNCATE TABLE Confirmations;
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('3', '2021-01-06 03:30:46', 'timeout');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('3', '2021-07-14 14:00:00', 'timeout');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('7', '2021-06-12 11:57:29', 'confirmed');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('7', '2021-06-13 12:58:28', 'confirmed');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('7', '2021-06-14 13:59:27', 'confirmed');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('2', '2021-01-22 00:00:00', 'confirmed');
INSERT INTO Confirmations (user_id, time_stamp, action)
VALUES ('2', '2021-02-28 23:59:59', 'timeout');


-- Write your PostgreSQL query statement below
WITH TBL AS (SELECT *,
                    CASE WHEN action = 'confirmed' THEN 1.0 ELSE 0.0 END AS num
             FROM Confirmations),
     TBL2 AS (SELECT user_id, AVG(num) AS av
              FROM TBL
              GROUP BY user_id)
SELECT s.user_id,
       COALESCE((SELECT av FROM TBL2 WHERE user_id = s.user_id), 0.00) AS confirmation_rate
FROM signups s
         LEFT JOIN TBL2 ON s.user_id = TBL2.user_id;



SELECT s.user_id,
       ROUND(COALESCE(
                         SUM(CASE WHEN c.action = 'confirmed' THEN 1.0 ELSE 0.0 END) / COUNT(*),
                         0.00
                 ), 2) AS confirmation_rate
FROM signups s
         LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

SELECT s.user_id,
       ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 2) AS confirmation_rate
FROM Signups s
         LEFT JOIN
     Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

SELECT *
FROM Signups s
         LEFT JOIN
     Confirmations c ON s.user_id = c.user_id;



DO
$$
    DECLARE
        num INT := 1;
    BEGIN
        WHILE num <= 100
            LOOP
                RAISE NOTICE '%', num;
                IF num = 42 THEN
                    RAISE NOTICE '42 is the answer to life, the universe, and everything!';
                    EXIT;
                END IF;
                num := num + 1;
            END LOOP;
    END
$$;


SELECT P.ProductName,
       P.price,
       C.CategoryID,
       DENSE_RANK() OVER (PARTITION BY C.CategoryName ORDER BY
           P.price) AS PriceRank
FROM Products P
         JOIN Categories C
              ON P.CategoryID = C.CategoryID;



--10. You get the Date value ‘2024-04-14’.
--  Write function that returns integer format ‘yyyymmdd’ : 20240414.


CREATE FUNCTION date_to_str(value DATE)
    RETURNS INTEGER
AS
$$
BEGIN
    RETURN REPLACE(TO_CHAR(value, 'YYYY-MM-DD'), '-', '')::integer
    ;
END;
$$ LANGUAGE plpgsql;


SELECT date_to_str(date '2024-04-14');


SELECT *,
  department_name,
  row_number()  OVER (PARTITION BY department_name) AS percentile_value
FROM
  employees;



SELECT
  department_name,
  rank(8) WITHIN GROUP  (ORDER BY employee_id) AS median_employee_id
FROM
  employees
GROUP BY department_name;