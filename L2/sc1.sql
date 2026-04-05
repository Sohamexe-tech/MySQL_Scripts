DROP DATABASE IF EXISTS sd1_18mar2026;

CREATE DATABASE IF NOT EXISTS sd1_18mar2026;

USE sd1_18mar2026;

CREATE TABLE employee
(
    eid SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    ename VARCHAR(30) NOT NULL,
    esalary DOUBLE UNSIGNED NOT NULL,
    eaddress VARCHAR(50) NOT NULL DEFAULT 'mumbai'
);

DESC employee;

INSERT INTO employee (ename, esalary) VALUES ('neha', 4000);

INSERT INTO employee (ename, esalary, eaddress) 
VALUES ('Soham', 5000, 'Bhandup');

SELECT * FROM employee;