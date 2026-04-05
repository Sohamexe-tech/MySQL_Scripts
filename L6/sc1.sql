DROP DATABASE IF EXISTS kc_db;
CREATE DATABASE kc_db;
USE kc_db;

CREATE TABLE stu (
    rno INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20)
);

DESC stu;

INSERT INTO stu VALUES (DEFAULT, 'amit');
INSERT INTO stu VALUES (DEFAULT, 'neha');
INSERT INTO stu VALUES (DEFAULT, 'pooja');

SELECT * FROM stu;

RENAME TABLE stu TO students;

SELECT * FROM students;

INSERT INTO students VALUES (DEFAULT, 'sita');
INSERT INTO students VALUES (DEFAULT, 'gita');
INSERT INTO students VALUES (DEFAULT, 'rita');

SELECT * FROM students;

ALTER TABLE students RENAME TO thane_students;

SELECT * FROM thane_students;

TRUNCATE TABLE thane_students;

SELECT * FROM thane_students;

INSERT INTO thane_students VALUES (DEFAULT, 'sita');
INSERT INTO thane_students VALUES (DEFAULT, 'gita');
INSERT INTO thane_students VALUES (DEFAULT, 'rita');

SELECT * FROM thane_students;

DELETE FROM thane_students;

SELECT * FROM thane_students;

INSERT INTO thane_students VALUES (DEFAULT, 'sita');
INSERT INTO thane_students VALUES (DEFAULT, 'gita');
INSERT INTO thane_students VALUES (DEFAULT, 'rita');

SELECT * FROM thane_students;