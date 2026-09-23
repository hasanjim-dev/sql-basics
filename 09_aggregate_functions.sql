USE sql_basics;

SELECT COUNT(*)        AS total_employees FROM employees;
SELECT COUNT(email)    AS employees_with_email FROM employees;
SELECT COUNT(DISTINCT city) AS unique_cities FROM employees;

SELECT SUM(salary) AS total_salary FROM employees;

SELECT AVG(salary) AS average_salary FROM employees;
SELECT ROUND(AVG(salary), 2) AS average_salary FROM employees;

SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary  FROM employees;

SELECT COUNT(*)    AS total,
       SUM(salary) AS total_salary,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees;

SELECT COUNT(*) AS dhaka_employees, AVG(salary) AS dhaka_avg_salary
FROM employees
WHERE city = 'Dhaka';
