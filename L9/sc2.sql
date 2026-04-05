DROP DATABASE kit_db;


CREATE DATABASE kit_db;
USE kit_db;

CREATE TABLE courses (
cid INT PRIMARY KEY,
cname VARCHAR(50),
fees DECIMAL(10,2)
);

CREATE TABLE students (
rno INT PRIMARY KEY,
name VARCHAR(50),
cid INT,
FOREIGN KEY (cid) REFERENCES courses(cid)
);

INSERT INTO courses VALUES
(1,'python',11000.00),
(2,'java',15000.00),
(3,'js',13000.00),
(4,'yoga',1000.00);

INSERT INTO students VALUES
(1,'raj',2),
(2,'sunil',1),
(3,'kavita',3),
(4,'anil',1),
(5,'sunita',2);

SELECT students.name, courses.cname
FROM students, courses
WHERE students.cid = courses.cid;

SELECT students.name
FROM students, courses
WHERE students.cid = courses.cid AND courses.cname = 'python';

SELECT name
FROM students
WHERE cid != (SELECT cid FROM courses WHERE cname='java');

SELECT cname
FROM courses
WHERE cid NOT IN (SELECT cid FROM students);

DESC courses;

DESC students;