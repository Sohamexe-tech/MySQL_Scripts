drop database if exists kamalclasses_db;
create database if not exists kamalclasses_db;
use kamalclasses_db;

drop table if exists student;

create table student(
    rno int primary key,
    name varchar(50),
    marks double,
    city varchar(50),
    grade varchar(5)
);

insert into student values
(1, 'Amit', 78, 'Mumbai', 'A'),
(2, 'Neha', 85, 'Pune', 'B'),
(3, 'Raj', 67, 'Delhi', 'A'),
(4, 'Simran', 92, 'Mumbai', 'A'),
(5, 'Karan', 55, 'Pune', 'C'),
(6, 'Pooja', 88, 'Delhi', 'A'),
(7, 'Arjun', 73, 'Mumbai', 'B'),
(8, 'Sneha', 81, 'Pune', 'A'),
(9, 'Vikas', 60, 'Delhi', 'C'),
(10, 'Anjali', 95, 'Mumbai', 'A');
select * from student;
