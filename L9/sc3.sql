DROP DATABASE IF EXISTS kamalclasses_db;

CREATE DATABASE kamalclasses_db;
USE kamalclasses_db;

CREATE TABLE employees (
eid INT PRIMARY KEY,
name VARCHAR(50),
reports_to INT,
did INT,
FOREIGN KEY (reports_to) REFERENCES employees(eid)
);

INSERT INTO employees VALUES
(100,'kamal',NULL,1),
(101,'vishal',100,1),
(102,'amit',100,2),
(103,'neha',101,1),
(104,'pooja',102,2);

SELECT a.name AS EMP, b.name AS MGR
FROM employees a, employees b
WHERE a.reports_to = b.eid;

SELECT a.name AS EMP, b.name AS MGR
FROM employees a
LEFT JOIN employees b
ON a.reports_to = b.eid;

DESC employees;