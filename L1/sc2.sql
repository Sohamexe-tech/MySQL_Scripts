drop database if exists class_16march2026;

create database if not exists  class_16march2026;

use class_16march2026;

create table if not exists student(rno tinyint primary key , marks tinyint ,name varchar(30),check((rno>=1)and(rno<=120)),check((marks>=0)and(marks<=100)));

desc student;

insert into student value(1,90,'Soham');

select rno,name,marks from student;

insert into student value(2,89,'Arnav');

select rno,name,marks from student;

insert into student value(3,90,'Sujal');

select rno,name,marks from student;






