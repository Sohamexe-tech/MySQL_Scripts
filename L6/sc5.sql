Drop database if exists library;

create database library;
use library;

create table authors (
author_id int unsigned primary key,
name varchar(50) not null,
email varchar(100),
constraint uq_author_email unique (email)
);

create table books (
book_id int unsigned primary key,
title varchar(100) not null,
isbn char(13) unique,
author_id int unsigned,
foreign key (author_id) references authors(author_id)
on delete cascade
on update cascade
);

INSERT INTO authors (author_id, name, email) VALUES
(1,'Chetan Bhagat','chetan@gmail.com'),
(2,'Arundhati Roy','arundhati@gmail.com'),
(3,'R.K. Narayan','rk@gmail.com'),
(4,'Amish Tripathi','amish@gmail.com');

INSERT INTO books (book_id, title, isbn, author_id) VALUES
(101,'Five Point Someone','9788129135490',1),
(102,'The God of Small Things','9780679457312',2),
(103,'Malgudi Days','9788185986177',3),
(104,'The Immortals of Meluha','9789380658742',4);

desc authors;

desc books;

select*from books;

