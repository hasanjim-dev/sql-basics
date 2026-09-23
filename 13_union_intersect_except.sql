USE sql_basics;

SELECT city FROM employees WHERE dept_id = 1
UNION
SELECT city FROM employees WHERE dept_id = 3;

SELECT city FROM employees WHERE dept_id = 1
UNION ALL
SELECT city FROM employees WHERE dept_id = 3;

SELECT city FROM employees WHERE dept_id = 1
INTERSECT
SELECT city FROM employees WHERE dept_id = 3;

SELECT city FROM employees WHERE dept_id = 1
EXCEPT
SELECT city FROM employees WHERE dept_id = 3;

SELECT DISTINCT city FROM employees
WHERE dept_id = 1
  AND city IN (SELECT city FROM employees WHERE dept_id = 3);

SELECT DISTINCT city FROM employees
WHERE dept_id = 1
  AND city NOT IN (SELECT city FROM employees WHERE dept_id = 3 AND city IS NOT NULL);
