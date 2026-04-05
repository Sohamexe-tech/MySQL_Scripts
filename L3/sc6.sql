DROP DATABASE IF EXISTS kc;
CREATE DATABASE IF NOT EXISTS kc;
USE kc;

-- CHAR (fixed length)
CREATE TABLE tp1(name CHAR(10));

INSERT INTO tp1 VALUES ('amit');
INSERT INTO tp1 VALUES ('amitabh');
INSERT INTO tp1 VALUES ('mangesh');
INSERT INTO tp1 VALUES ('balasubramaniam'); -- exceeds 10 chars

SELECT * FROM tp1;


-- VARCHAR (variable length)
CREATE TABLE tp2(name VARCHAR(10));

INSERT INTO tp2 VALUES ('amit');
INSERT INTO tp2 VALUES ('amitabh');
INSERT INTO tp2 VALUES ('mangesh');
INSERT INTO tp2 VALUES ('balasubramaniam'); -- exceeds 10 chars

SELECT * FROM tp2;