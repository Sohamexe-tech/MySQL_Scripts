CREATE DATABASE bookstore_db;
USE bookstore_db;

CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR(50),
category VARCHAR(20),
price DECIMAL(8,2)
);

INSERT INTO books VALUES
(101,'Java Basics','Programming',450.50),
(102,'Python 101','Programming',399.00),
(103,'Harry Potter','Fiction',550.00),
(104,'Space Facts','Science',300.00),
(105,'Kids Story','Kids',150.00);

SELECT title, price FROM books;

SELECT book_id AS ID, title AS BookName FROM books;

SELECT CONCAT(title,' costs Rs ',price) AS Book_Info FROM books;

SELECT DISTINCT category FROM books;

SELECT * FROM books WHERE price > 300;

SELECT * FROM books WHERE category='Programming' AND price < 500;

SELECT * FROM books WHERE title LIKE 'P%';

SELECT * FROM books WHERE title LIKE '%on%';

SELECT * FROM books WHERE category IN ('Fiction','Science');

SELECT * FROM books WHERE category NOT IN ('Programming','Kids');

SELECT * FROM books WHERE price BETWEEN 200 AND 450;

SELECT * FROM books ORDER BY price DESC;

SELECT * FROM books ORDER BY category ASC, price DESC;

SELECT * FROM books ORDER BY price ASC LIMIT 2;

SELECT * FROM books ORDER BY price DESC LIMIT 1 OFFSET 1;