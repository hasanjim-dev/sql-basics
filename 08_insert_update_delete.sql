USE sql_basics;

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(50) NOT NULL,
    city       VARCHAR(50),
    marks      INT
);

INSERT INTO students (name, city, marks) VALUES ('Rahim', 'Dhaka', 78);

INSERT INTO students (name, city, marks) VALUES
('Karim', 'Khulna', 65),
('Sadia', 'Dhaka', 90),
('Nusrat', 'Sylhet', 55);

SELECT * FROM students;

UPDATE students SET marks = 82 WHERE name = 'Rahim';

UPDATE students SET city = 'Rajshahi', marks = 70 WHERE name = 'Karim';

UPDATE students SET marks = marks + 5 WHERE marks < 60;

SELECT * FROM students;

DELETE FROM students WHERE name = 'Nusrat';

DELETE FROM students WHERE marks < 60;

SELECT * FROM students;
