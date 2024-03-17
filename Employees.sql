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

-- Employee with the longest name
SELECT employee_id, LENGTH(full_name) AS len
FROM employees
WHERE LENGTH(full_name) >= ALL
      (SELECT LENGTH(full_name) FROM employees);

-- Create a query that sorts the names of employees
-- in each department in a separate column.
-- Sort the names of employees alphabetically in each column.

-- Version if the departments are known:
WITH TBl AS (SELECT full_name,
                    department_name,
                    ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY full_name) AS RN
             FROM employees)

SELECT MAX(CASE WHEN department_name = 'Business Development' THEN full_name END) AS "Business Development",
       MAX(CASE WHEN department_name = 'Engineering' THEN full_name END)          AS "Engineering",
       MAX(CASE WHEN department_name = 'Human Resources' THEN full_name END)      AS "Human Resources",
       MAX(CASE WHEN department_name = 'Sales' THEN full_name END)                AS "Sales"
FROM TBL
GROUP BY RN
ORDER BY RN;


-- PL/PGSQL dynamic version that creates a temporary table with the results, named TEMP_TABLE
DO
$$
    DECLARE
        sql_query TEXT;
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


