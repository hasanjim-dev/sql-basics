USE sql_basics;

SELECT first_name, salary FROM employees ORDER BY salary;

SELECT first_name, salary FROM employees ORDER BY salary DESC;

SELECT first_name, city, salary FROM employees ORDER BY city ASC, salary DESC;

SELECT * FROM employees LIMIT 3;

SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 3;

SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 3 OFFSET 3;

SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 3, 3;
