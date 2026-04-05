DROP DATABASE IF EXISTS bank_18mar26;

CREATE DATABASE IF NOT EXISTS bank_18mar26;

USE bank_18mar26;

CREATE TABLE account (
    account_number BIGINT UNSIGNED PRIMARY KEY,
    customer_name VARCHAR(30),
    balance DOUBLE UNSIGNED NOT NULL,

    CHECK (account_number >= 12 AND account_number <= 15),
    CONSTRAINT min_acc_number_shud_be_1 CHECK (account_number >= 1),
    CONSTRAINT min_balance_shud_be_1 CHECK (balance >= 5000)
);

INSERT INTO account (account_number, customer_name, balance)
VALUES (13, 'soham', 6000);

SELECT * FROM account;

DESC account;