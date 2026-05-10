USE kc_db;

DELIMITER $$

DROP PROCEDURE IF EXISTS loop_demo $$
CREATE PROCEDURE loop_demo(IN n INT)
BEGIN
    DECLARE i INT DEFAULT 1;

    IF n IS NULL THEN
        SELECT "n cannot be null" AS ERR_MSG;

    ELSEIF n <= 0 THEN
        SELECT "n shud be min 1" AS ERR_MSG;

    ELSE
        abc: LOOP
            SELECT CONCAT("i = ", i, " Hare Rama Hare Krishna Radhe Radhe") AS MSG;
            SET i = i + 1;

            IF i > n THEN
                LEAVE abc;
            END IF;
        END LOOP;
    END IF;
END $$

DELIMITER ;