-- Create database
DROP DATABASE IF EXISTS kc_db;
CREATE DATABASE kc_db;
USE kc_db;

-- Create student table
CREATE TABLE student (
    rno INT PRIMARY KEY,
    name VARCHAR(50),
    marks DOUBLE,
    city VARCHAR(50),
    grade VARCHAR(5)
);

INSERT INTO student (rno, name, marks, city, grade) VALUES
(1, 'Amit', 75, 'Mumbai', 'A'),
(2, 'Sneha', 38, 'Pune', 'C'),
(3, 'Rahul', 55, 'Delhi', 'B'),
(4, 'Priya', 90, 'Chennai', 'A'),
(5, 'Karan', 30, 'Kolkata', 'D');

SELECT * FROM student;