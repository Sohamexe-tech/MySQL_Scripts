DROP DATABASE IF EXISTS order_db;
CREATE DATABASE order_db;
USE order_db;

CREATE TABLE orders (
    oid INT PRIMARY KEY,
    cname VARCHAR(50),
    amount DECIMAL(8,2),
    status VARCHAR(50)
);

INSERT INTO orders (oid, cname, amount, status) VALUES
(1,'Soham Dalvi',1500.50,'Pending'),
(2,'Priti Karia',2450.75,'Completed'),
(3,'Tilak Verma',999.99,'Shipped'),
(4,'Sneha Singh',1200.00,'Cancelled');

DESC orders;

SELECT * FROM orders;

INSERT INTO orders VALUES (501,'Ravi',1200,'Pending');

INSERT INTO orders VALUES
(502,'Neha',2200,'Pending'),
(503,'Amit',1800,'Shipped');

UPDATE orders SET status='Shipped' WHERE oid=501;

UPDATE orders SET amount=2500, status='Paid' WHERE cname='Neha';

UPDATE orders SET amount = amount + 50 WHERE status='Pending';

DELETE FROM orders WHERE amount < 1500;

UPDATE orders SET amount = amount * 0.90 WHERE amount > 2000;

UPDATE orders SET status='Completed' WHERE status='Paid';

UPDATE orders SET status='Cancelled' WHERE cname LIKE '%a';