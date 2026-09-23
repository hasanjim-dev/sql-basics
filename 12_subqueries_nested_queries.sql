USE sql_basics;

SELECT first_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT first_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT first_name, dept_id
FROM employees
WHERE dept_id IN (SELECT dept_id FROM departments WHERE location = 'Dhaka');

SELECT first_name
FROM employees
WHERE dept_id NOT IN (SELECT dept_id FROM departments WHERE dept_name = 'IT');

SELECT dept_name
FROM departments d
WHERE EXISTS (SELECT 1 FROM employees e WHERE e.dept_id = d.dept_id);

SELECT first_name, salary, dept_id
FROM employees e1
WHERE salary > (
    SELECT AVG(salary) FROM employees e2 WHERE e2.dept_id = e1.dept_id
);

SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) AS dept_avg
WHERE avg_salary > 50000;

SELECT first_name,
       salary,
       (SELECT AVG(salary) FROM employees) AS company_avg
FROM employees;
