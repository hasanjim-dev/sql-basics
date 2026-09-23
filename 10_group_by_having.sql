USE sql_basics;

SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city;

SELECT dept_id, AVG(salary) AS avg_salary, MAX(salary) AS max_salary
FROM employees
GROUP BY dept_id;

SELECT dept_id, city, COUNT(*) AS total
FROM employees
GROUP BY dept_id, city;

SELECT city, COUNT(*) AS total
FROM employees
WHERE salary > 40000
GROUP BY city;

SELECT city, COUNT(*) AS total
FROM employees
GROUP BY city
HAVING COUNT(*) > 1;

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 50000
ORDER BY avg_salary DESC;
