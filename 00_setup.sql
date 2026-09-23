DROP DATABASE IF EXISTS sql_basics;
CREATE DATABASE sql_basics;
USE sql_basics;

CREATE TABLE departments (
    dept_id   INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location  VARCHAR(50)
);

CREATE TABLE employees (
    emp_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    email      VARCHAR(100) UNIQUE,
    salary     DECIMAL(10,2),
    hire_date  DATE,
    city       VARCHAR(50),
    dept_id    INT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name, location) VALUES
('IT',        'Dhaka'),
('HR',        'Chattogram'),
('Finance',   'Dhaka'),
('Marketing', 'Sylhet');

INSERT INTO employees (first_name, last_name, email, salary, hire_date, city, dept_id) VALUES
('Rahim',   'Uddin',   'rahim@example.com',   55000.00, '2020-01-15', 'Dhaka',      1),
('Karim',   'Hossain', 'karim@example.com',   48000.00, '2019-03-10', 'Chattogram', 2),
('Sadia',   'Akter',   'sadia@example.com',   62000.00, '2021-07-01', 'Dhaka',      1),
('Nusrat',  'Jahan',   'nusrat@example.com',  45000.00, '2022-02-20', 'Sylhet',     3),
('Tanvir',  'Ahmed',   'tanvir@example.com',  70000.00, '2018-11-05', 'Dhaka',      1),
('Mitu',    'Rani',    'mitu@example.com',    39000.00, '2023-05-18', 'Rajshahi',   2),
('Fahim',   'Khan',    'fahim@example.com',   52000.00, '2020-09-30', 'Dhaka',      3),
('Lima',    'Begum',   'lima@example.com',    58000.00, '2021-12-12', 'Khulna',     3),
('Arif',    'Mia',     'arif@example.com',    41000.00, '2024-01-08', 'Chattogram', 1),
('Jui',     'Sarker',  NULL,                  36000.00, '2024-06-25', 'Dhaka',      NULL);

SELECT * FROM departments;
SELECT * FROM employees;
