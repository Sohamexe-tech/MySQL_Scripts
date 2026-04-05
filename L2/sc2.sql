DROP DATABASE IF EXISTS cricket_18march26;

CREATE DATABASE IF NOT EXISTS cricket_18march26;

USE cricket_18march26;

CREATE TABLE IF NOT EXISTS player
(
    jno TINYINT PRIMARY KEY,
    pname VARCHAR(25) NOT NULL,
    age TINYINT NOT NULL,
    CHECK (jno >= 1 AND jno <= 99),
    CHECK (age >= 16 AND age <= 45)
);

INSERT INTO player (jno, pname, age) VALUES (67, 'Soham', 20);
INSERT INTO player (jno, pname, age) VALUES (7, 'Dhoni', 30);
INSERT INTO player (jno, pname, age) VALUES (18, 'Kohli', 20);

DESC player;

SHOW CREATE TABLE player\G