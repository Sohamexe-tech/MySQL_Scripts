DROP DATABASE IF EXISTS shopping_db;
CREATE DATABASE shopping_db;
USE shopping_db;

SET @@auto_increment_increment = 2;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    stock TINYINT UNSIGNED,
    price FLOAT,
    final_price DECIMAL(10,2),
    PRIMARY KEY (product_id),
    CONSTRAINT stock_range_chk CHECK (stock BETWEEN 1 AND 99)
) AUTO_INCREMENT = 100;

INSERT INTO products (product_name, stock, price, final_price) VALUES
('Laptop', 10, 59999.99, 59999.99),
('Mouse', 25, 499.456, 499.46),
('Keyboard', 15, 999.999, 1000.00);

SELECT * FROM products;