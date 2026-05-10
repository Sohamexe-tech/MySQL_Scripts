#wapp to print avg of three numbers supplied

USE kc_db;

DELIMITER $$

DROP PROCEDURE IF EXISTS avg_of_three $$

CREATE PROCEDURE avg_of_three(IN n1 DOUBLE, IN n2 DOUBLE, IN n3 DOUBLE)
BEGIN
DECLARE sum DOUBLE DEFAULT 0.0;
DECLARE avg DOUBLE DEFAULT 0.0;
SET sum = n1 + n2 + n3;
SET avg = sum / 3;
SELECT avg AS Average;

select concat("avg=",round(avg,2))as RESULT;
END $$

DELIMITER ;