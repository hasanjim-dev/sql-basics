USE sql_basics;

SELECT * FROM employees WHERE city = 'Dhaka';

SELECT first_name, salary FROM employees WHERE salary > 50000;

SELECT * FROM employees WHERE dept_id = 1;

SELECT * FROM employees WHERE salary <> 55000;
SELECT * FROM employees WHERE salary >= 60000;

SELECT * FROM employees WHERE hire_date > '2021-01-01';

SELECT * FROM employees WHERE email IS NULL;
SELECT * FROM employees WHERE dept_id IS NOT NULL;
