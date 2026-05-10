USE kc_db;

DELIMITER $$

DROP PROCEDURE IF EXISTS sum_avg_of_three $$

CREATE PROCEDURE sum_avg_of_three(IN n1 DOUBLE, IN n2 DOUBLE, IN n3 DOUBLE, OUT sum DOUBLE, OUT avg DOUBLE)
BEGIN
SET sum = n1 + n2 + n3;
SET sum = ROUND(sum,2);
SET avg = sum / 3;
SET avg = ROUND(avg,2);
END $$

DELIMITER ;