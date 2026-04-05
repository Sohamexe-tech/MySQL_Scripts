DROP DATABASE IF EXISTS university_db;
CREATE DATABASE IF NOT EXISTS university_db;
USE university_db;

CREATE TABLE IF NOT EXISTS courses (
    course_code CHAR(6),
    course_title VARCHAR(100) NOT NULL,
    credits TINYINT UNSIGNED,
    course_type ENUM('core','elective','lab'),
    passing_grade DECIMAL(6,2),
    PRIMARY KEY (course_code),
    CONSTRAINT course_length_chk CHECK (LENGTH(course_code) = 6),
    CONSTRAINT credits_range_chk CHECK (credits BETWEEN 1 AND 5)
);

INSERT INTO courses VALUES ('CS1001', 'Machine Learning', 4, 'core', 45.50);

SELECT * FROM courses;