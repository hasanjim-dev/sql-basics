USE sql_basics;

SELECT * FROM employees WHERE city IN ('Dhaka', 'Sylhet', 'Khulna');
SELECT * FROM employees WHERE dept_id NOT IN (1, 2);

SELECT * FROM employees WHERE salary BETWEEN 40000 AND 55000;
SELECT * FROM employees WHERE hire_date BETWEEN '2020-01-01' AND '2021-12-31';
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 55000;

SELECT * FROM employees WHERE first_name LIKE 'R%';
SELECT * FROM employees WHERE first_name LIKE '%a';
SELECT * FROM employees WHERE first_name LIKE '%im%';
SELECT * FROM employees WHERE first_name LIKE '_ahim';
SELECT * FROM employees WHERE email NOT LIKE '%@example.com';

SELECT * FROM employees WHERE email IS NULL;
