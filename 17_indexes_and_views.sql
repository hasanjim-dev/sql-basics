USE sql_basics;

CREATE INDEX idx_employees_city ON employees(city);

CREATE INDEX idx_employees_dept_salary ON employees(dept_id, salary);

CREATE UNIQUE INDEX idx_employees_email ON employees(email);

SHOW INDEX FROM employees;

EXPLAIN SELECT * FROM employees WHERE city = 'Dhaka';

DROP INDEX idx_employees_city ON employees;
DROP INDEX idx_employees_dept_salary ON employees;

CREATE VIEW employee_details AS
SELECT e.emp_id,
       CONCAT(e.first_name, ' ', e.last_name) AS full_name,
       e.salary,
       e.city,
       d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

SELECT * FROM employee_details;
SELECT * FROM employee_details WHERE dept_name = 'IT' ORDER BY salary DESC;

CREATE VIEW department_summary AS
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees,
       ROUND(AVG(e.salary), 2) AS avg_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

SELECT * FROM department_summary;

CREATE OR REPLACE VIEW department_summary AS
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees,
       ROUND(AVG(e.salary), 2) AS avg_salary,
       MAX(e.salary) AS max_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

SHOW FULL TABLES WHERE Table_type = 'VIEW';

DROP VIEW IF EXISTS employee_details;
DROP VIEW IF EXISTS department_summary;
