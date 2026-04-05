DROP DATABASE IF EXISTS school_db;
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
    roll_number INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL
);

ALTER TABLE students 
MODIFY student_name VARCHAR(50) NOT NULL;

ALTER TABLE students 
ADD COLUMN hobbies VARCHAR(100);

ALTER TABLE students 
ADD COLUMN fees DECIMAL(10,2) AFTER student_name;

ALTER TABLE students 
ADD COLUMN class TINYINT CHECK (class BETWEEN 1 AND 12);

ALTER TABLE students 
ADD COLUMN section CHAR(1) CHECK (section IN ('A','B','C'));

ALTER TABLE students 
CHANGE student_name full_name VARCHAR(50) NOT NULL;

ALTER TABLE students 
DROP COLUMN hobbies;

DESC students;