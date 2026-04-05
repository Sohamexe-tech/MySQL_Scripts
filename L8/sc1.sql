DROP DATABASE IF EXISTS book_db;
CREATE DATABASE book_db;
USE book_db;

CREATE TABLE books (
    bid INT PRIMARY KEY,
    bname VARCHAR(50),
    bprice DECIMAL(8,2),
    bcategory VARCHAR(50)
);

INSERT INTO books VALUES (10,'java',450,'comps');

INSERT INTO books VALUES
(20,'android',350,'comps'),
(15,'ac',450,'mech');
SELECT * FROM books;


UPDATE books 
SET bname='java certification' 
WHERE bid=10;
SELECT * FROM books;

UPDATE books 
SET bname='rac', bprice=320 
WHERE bid=15;
SELECT * FROM books;


UPDATE books 
SET bprice = bprice * 1.10;
SELECT * FROM books;


DELETE FROM books 
WHERE bcategory='mech';
SELECT * FROM books;


UPDATE books 
SET bprice = bprice * 0.97 
WHERE bcategory='comps';

SELECT * FROM books;