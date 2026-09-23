USE sql_basics;

SELECT UPPER('hello')                 AS upper_case;
SELECT LOWER('HELLO')                 AS lower_case;
SELECT LENGTH('Hasan')                AS length_bytes;
SELECT CHAR_LENGTH('Hasan')           AS length_chars;
SELECT CONCAT('Hasan', ' ', 'Jim')    AS full_name;
SELECT CONCAT_WS('-', '2026', '09', '23') AS joined;
SELECT SUBSTRING('Database', 1, 4)    AS part;
SELECT LEFT('Database', 4)            AS left_part;
SELECT RIGHT('Database', 4)           AS right_part;
SELECT TRIM('   hello   ')            AS trimmed;
SELECT LTRIM('   hello')              AS left_trimmed;
SELECT RTRIM('hello   ')              AS right_trimmed;
SELECT REPLACE('I love SQL', 'love', 'like') AS replaced;
SELECT REVERSE('SQL')                 AS reversed;
SELECT LOCATE('SQL', 'I love SQL')    AS position;

SELECT UPPER(first_name) AS name_upper,
       CONCAT(first_name, ' ', last_name) AS full_name,
       LENGTH(first_name) AS name_length,
       SUBSTRING(email, 1, LOCATE('@', email) - 1) AS username
FROM employees
WHERE email IS NOT NULL;

SELECT NOW()        AS current_datetime;
SELECT CURDATE()    AS current_date_only;
SELECT CURTIME()    AS current_time_only;

SELECT YEAR('2026-09-23')      AS year_part;
SELECT MONTH('2026-09-23')     AS month_part;
SELECT DAY('2026-09-23')       AS day_part;
SELECT DAYNAME('2026-09-23')   AS day_name;
SELECT MONTHNAME('2026-09-23') AS month_name;

SELECT DATE_ADD('2026-09-23', INTERVAL 10 DAY)   AS plus_10_days;
SELECT DATE_SUB('2026-09-23', INTERVAL 1 MONTH)  AS minus_1_month;
SELECT DATEDIFF('2026-12-31', '2026-09-23')      AS days_between;

SELECT DATE_FORMAT('2026-09-23', '%d-%m-%Y')     AS formatted;
SELECT DATE_FORMAT(NOW(), '%W, %M %e, %Y')       AS long_format;

SELECT first_name,
       hire_date,
       YEAR(hire_date) AS hire_year,
       TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years_worked
FROM employees;

SELECT first_name, hire_date FROM employees WHERE YEAR(hire_date) = 2021;
