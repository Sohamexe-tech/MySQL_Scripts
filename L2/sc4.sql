DROP DATABASE IF EXISTS ecommerce_18march26;

CREATE DATABASE IF NOT EXISTS ecommerce_18march26;

USE ecommerce_18march26;

CREATE TABLE orders (
    order_id INT UNSIGNED PRIMARY KEY,
    customer_name VARCHAR(100),
    payment_mode ENUM('cod','card','upi','net banking') NOT NULL DEFAULT 'cod'
);

INSERT INTO orders (order_id, customer_name)
VALUES (1, 'tshirt');

SELECT * FROM orders;

DESC orders;