DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE accounts (
    account_number INT,
    name VARCHAR(50),
    account_type ENUM('savings','current'),
    email_id VARCHAR(100),
    phone_number BIGINT,
    pan_number CHAR(10),
    city VARCHAR(50) DEFAULT 'Mumbai',
    PRIMARY KEY (account_number),
    UNIQUE (email_id),
    CONSTRAINT uk1 UNIQUE (phone_number),
    CONSTRAINT uk2 UNIQUE (pan_number),
    CONSTRAINT pan_len_chk CHECK (CHAR_LENGTH(pan_number) = 10)
) AUTO_INCREMENT = 1001;

ALTER TABLE accounts MODIFY account_number INT AUTO_INCREMENT;

INSERT INTO accounts (name, account_type, email_id, phone_number, pan_number, city) VALUES
('Soham', 'savings', 'soham@gmail.com', 9876543210, 'ABCDE1234F', 'Mumbai'),
('Nimish', 'current', 'nimish@gmail.com', 9123456780, 'PQRSX5678L', 'Delhi'),
('Diddy', 'savings', 'diddy@gmail.com', 9988776655, 'LMNOP4321K', DEFAULT);

DESC accounts;

SELECT * FROM accounts;