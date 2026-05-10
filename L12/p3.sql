#wamp to accept as input two numbers
#and return their addition

USE kc_db;

DELIMITER $$

DROP PROCEDURE IF EXISTS p3 $$

CREATE PROCEDURE p3(IN a FLOAT, IN b FLOAT, OUT res FLOAT)
BEGIN
SET res = a + b;
END $$

DELIMITER ;