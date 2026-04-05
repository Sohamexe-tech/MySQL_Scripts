DROP DATABASE IF EXISTS university_db;
CREATE DATABASE university_db;
USE university_db;

CREATE TABLE courses (
    course_code CHAR(6) PRIMARY KEY CHECK (LENGTH(course_code) = 6),
    course_title VARCHAR(100) NOT NULL,
    credits TINYINT UNSIGNED CHECK (credits BETWEEN 1 AND 5),
    course_type ENUM('core','elective','lab') NOT NULL,
    passing_grade DECIMAL(6,2)
);

INSERT INTO courses VALUES ('CS1001', 'Advanced DS', 4, 'core', 40.00);
INSERT INTO courses VALUES ('CS1002', 'Database Systems', 3, 'core', 45.50);
INSERT INTO courses VALUES ('CS1004', 'Operating Systems Lab', 2, 'lab', 35.00);
INSERT INTO courses VALUES ('CS1005', 'Computer Networks', 3, 'core', 42.75);

SELECT * FROM courses;