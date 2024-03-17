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

SELECT employee_id, length(full_name) as len from employees where length(full_name) >= ALL
                                        (SELECT length(full_name) from employees);
-- צרו שאילתה \ קוד פנדס

-- , אשר מסדרת את שמות העובדים בכל מחלקה בעמודה נפרדת.
-- בכל עמודה סדרו את שמות העובדים בצורה אלפאבתית.


-- bad!!
SELECT
    MAX(CASE WHEN department_name = 'Sales' THEN full_name END) AS Sales,
    MAX(CASE WHEN department_name = 'Engineering' THEN full_name END) AS Engineering,
    MAX(CASE WHEN department_name = 'Human Resources' THEN full_name END) AS "Human Resources",
    MAX(CASE WHEN department_name = 'Business Development' THEN full_name END) AS "Business Development"
FROM (
    SELECT
        full_name,
        department_name
--         ROW_NUMBER() OVER (PARTITION BY department_name ORDER BY full_name) AS row_num
    FROM employees
) AS SourceTable
GROUP BY full_name;
