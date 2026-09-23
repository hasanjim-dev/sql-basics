USE sql_basics;

SELECT * FROM employees;

SELECT first_name, last_name, salary FROM employees;

SELECT first_name AS name, salary AS monthly_salary FROM employees;

SELECT first_name, salary, salary * 12 AS yearly_salary FROM employees;

SELECT DISTINCT city FROM employees;
SELECT DISTINCT dept_id FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
