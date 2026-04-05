CREATE DATABASE shop;
USE shop;

CREATE TABLE customers (
    customer_id INT UNSIGNED PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    CONSTRAINT uq_customer_phone UNIQUE (phone),
    CONSTRAINT uq_customer_email UNIQUE (email)
);

CREATE TABLE orders (
    order_id INT UNSIGNED PRIMARY KEY,
    order_code CHAR(8) UNIQUE,
    customer_id INT UNSIGNED,
    CONSTRAINT fk_orders FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

INSERT INTO customers (customer_id, name, phone, email) VALUES
(1,'Soham Dalvi','9876543210','soham@gmail.com'),
(2,'Priti Karia','9123456780','priti@gmail.com'),
(3,'Tilak Verma','9988776655','tilak@gmail.com'),
(4,'Sneha Singh','9090909090','sneha@gmail.com');

INSERT INTO orders (order_id, order_code, customer_id) VALUES
(101,'ORD00001',1),
(102,'ORD00002',2),
(103,'ORD00003',3),
(104,'ORD00004',1);

DESC customers;
DESC orders;

SELECT * FROM customers;
SELECT * FROM orders;