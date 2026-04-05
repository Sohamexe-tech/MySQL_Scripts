CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE transactions (
    transaction_id   INT AUTO_INCREMENT PRIMARY KEY,
    amount           DECIMAL(15, 2)  NOT NULL CHECK (amount > 0),
    transaction_type ENUM('Deposit', 'Withdrawal') NOT NULL,
    processing_fees  DECIMAL(15, 6)  NOT NULL CHECK (processing_fees > 0),
    transaction_status ENUM('SUCCESS', 'FAILED', 'PENDING') NOT NULL
);

INSERT INTO transactions (amount, transaction_type, processing_fees, transaction_status) VALUES
(5000.00,  'Deposit',    0.500000, 'SUCCESS'),
(1500.50,  'Withdrawal', 0.250000, 'SUCCESS'),
(300.75,   'Deposit',    0.100000, 'PENDING'),
(9999.99,  'Withdrawal', 1.250000, 'FAILED'),
(250.00,   'Deposit',    0.050000, 'SUCCESS'),
(750.25,   'Withdrawal', 0.300000, 'PENDING'),
(12000.00, 'Deposit',    2.000000, 'SUCCESS'),
(450.00,   'Withdrawal', 0.150000, 'FAILED'),
(60.10,    'Deposit',    0.025000, 'SUCCESS'),
(8800.00,  'Withdrawal', 1.750000, 'PENDING');

SELECT * FROM transactions;