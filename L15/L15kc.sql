DROP DATABASE IF EXISTS kc_db;
CREATE DATABASE kc_db;
USE kc_db;

CREATE TABLE student (
    rno INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    gender VARCHAR(10),
    location VARCHAR(30),
    marks INT
);

INSERT INTO student (name, gender, location, marks) VALUES
('Amit', 'Male', 'Mumbai', 85),
('Riya', 'Female', 'Mumbai', 92),
('John', 'Male', 'Pune', 47),
('Neha', 'Female', 'Chennai', 66),
('Raj', 'Male', 'Pune', 38),
('Tina', 'Female', 'Mumbai', 58),
('Karan', 'Male', 'Pune', 73),
('Pooja', 'Female', 'Delhi', 95),
('Sam', 'Male', 'Delhi', 61),
('Meena', 'Female', 'Pune', 80);

select * from student;

