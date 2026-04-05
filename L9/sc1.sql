DROP DATABASE IF EXISTS store_db;

CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

CREATE TABLE products (
pid INT PRIMARY KEY,
pname VARCHAR(50),
pprice DECIMAL(10,2)
);


CREATE TABLE customers (
cid INT PRIMARY KEY,
cname VARCHAR(50),
clocation VARCHAR(50),
pid INT,
FOREIGN KEY (pid) REFERENCES products(pid)
);

DESC products;
DESC customers;

INSERT INTO products VALUES
(1,'ssd',2500.00),
(2,'pd',200.00);

INSERT INTO customers VALUES
(1,'amit','thane',1),
(2,'sumit','kalyan',2),
(3,'neha','thane',1),
(4,'kamal','kalyan',NULL),
(5,'sneha','thane',NULL);

SELECT * FROM customers WHERE pid IS NULL;

SELECT * FROM customers WHERE pid IS NOT NULL;

SELECT customers.cname, products.pname
FROM customers, products
WHERE customers.pid = products.pid;

SELECT customers.cname
FROM customers, products
WHERE customers.pid = products.pid AND products.pname = 'ssd';

SELECT customers.cname, products.pname
FROM customers
LEFT JOIN products
ON customers.pid = products.pid;