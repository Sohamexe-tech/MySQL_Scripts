DROP DATABASE IF EXISTS school_db;

CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
rno INT,
name VARCHAR(50),
class VARCHAR(10),
marks DECIMAL(5,2),
PRIMARY KEY (rno, class)
);

INSERT INTO students VALUES
(101,'Amit','10A',85.5),
(102,'Priya','10A',90.0),
(101,'Rahul','10B',70.5),
(102,'Neha','10B',95.0),
(103,'Vikas','10A',60.0);

SELECT * FROM students;

SELECT name, marks FROM students;

SELECT rno AS RollNumber, marks AS Score FROM students;

SELECT DISTINCT class FROM students;

SELECT * FROM students WHERE marks > 80;

SELECT * FROM students WHERE class='10A' AND marks >= 70;

SELECT * FROM students WHERE name LIKE '%a%';

SELECT * FROM students WHERE name LIKE 'P%';

SELECT * FROM students WHERE class='10A' OR class='10B';

SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

SELECT * FROM students WHERE marks BETWEEN 70 AND 90 AND (class='10A' OR class='10C');

SELECT * FROM students ORDER BY marks DESC;

SELECT * FROM students ORDER BY marks DESC LIMIT 2;