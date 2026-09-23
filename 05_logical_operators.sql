USE sql_basics;

SELECT * FROM employees WHERE city = 'Dhaka' AND salary > 50000;

SELECT * FROM employees WHERE city = 'Dhaka' OR city = 'Sylhet';

SELECT * FROM employees WHERE NOT city = 'Dhaka';

SELECT * FROM employees
WHERE (city = 'Dhaka' OR city = 'Chattogram')
  AND salary >= 50000;

SELECT * FROM employees WHERE NOT (salary > 50000);
