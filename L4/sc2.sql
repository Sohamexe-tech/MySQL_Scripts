DROP DATABASE IF EXISTS shopping_db;
CREATE DATABASE shopping_db;
USE shopping_db;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    stock TINYINT UNSIGNED CHECK (stock BETWEEN 1 AND 99),
    price FLOAT,
    final_price DECIMAL(10,2)
) 

INSERT INTO products (product_name, stock, price, final_price) VALUES
('Laptop', 10, 59999.99, 59999.99),
('Mouse', 25, 499.456, 499.46),
('Keyboard', 15, 999.999, 1000.00);

SELECT * FROM products;