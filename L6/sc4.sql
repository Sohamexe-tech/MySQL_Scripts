drop database if exists kc;
create database if not exists kc;
use kc;

create table if not exists courses
(ccid int primary key, cname varchar(50), cfees decimal(7, 2));

insert into courses values
(1, 'ML', 11800),
(2, 'NLP', 5900),
(3, 'JSMERN', 11800);

create table if not exists students
(sid int primary key, sname varchar(100), cid int,
foreign key (cid) references courses(ccid));

insert into students values
(100, 'Soham', 1),
(101, 'Arnav', 3),
(102, 'Sarthak', 2);

select * from courses;
select * from students;

desc courses;
desc students;
show create table students\G