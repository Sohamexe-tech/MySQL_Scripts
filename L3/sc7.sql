DROP DATABASE IF EXISTS kc;
CREATE DATABASE IF NOT EXISTS kc;
USE kc;

-- ENUM (single value)
CREATE TABLE tp1(
    year ENUM('fe', 'se', 'te', 'be')
);

INSERT INTO tp1 VALUES ('fe');
INSERT INTO tp1 VALUES ('SE');  -- depends on case sensitivity
INSERT INTO tp1 VALUES ('ME');  -- invalid

SELECT * FROM tp1;
DESC tp1;


-- SET (multiple values)
CREATE TABLE tp2(
    toppings SET('ff', 'cc', 'or', 'bi', 'je')
);

INSERT INTO tp2 VALUES ('ff');
INSERT INTO tp2 VALUES ('ff,cc');
INSERT INTO tp2 VALUES ('or,or,or');
INSERT INTO tp2 VALUES ('parleg'); -- invalid

SELECT * FROM tp2;