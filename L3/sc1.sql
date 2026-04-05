create database if not exists kc;

select "database created" as MSG;

use kc;
select "database in use" as MSG;

select database();

drop database if exists kc;
select "database dropped" as MSG;

show databases;