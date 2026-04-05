DROP DATABASE IF EXISTS payroll_db;
CREATE DATABASE payroll_db;
USE payroll_db;

CREATE TABLE employees (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary DECIMAL(12,2),
    dept VARCHAR(30)
);

-- Q1
INSERT INTO employees VALUES (101,'Alice',50000,'HR');

-- Q2
INSERT INTO employees VALUES
(102,'Bob',45000,'IT'),
(103,'Charlie',55000,'Finance'),
(104,'Darwin',45000,'IT');

-- Q3
UPDATE employees 
SET salary = 52000 
WHERE ename='Alice';

-- Q4
UPDATE employees 
SET dept='DevOps', salary = salary + 2000 
WHERE ename='Bob';

-- Q5
UPDATE employees 
SET salary = salary * 1.10 
WHERE dept='Finance';

-- Q6
DELETE FROM employees 
WHERE salary < 48000;

-- Q7
UPDATE employees 
SET salary = salary * 0.95 
WHERE dept='HR';

-- Q8 (FIXED – no subquery error)
UPDATE employees 
SET salary = salary * 1.05 
ORDER BY salary DESC 
LIMIT 1;

SELECT * FROM employees;