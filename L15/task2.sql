DELIMITER $$

DROP PROCEDURE IF EXISTS task2 $$
CREATE PROCEDURE task2()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sname VARCHAR(50);
    DECLARE result TEXT DEFAULT "";

    DECLARE cur CURSOR FOR SELECT name FROM student;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    REPEAT
        FETCH cur INTO sname;
        IF NOT done THEN
            SET result = CONCAT(result, sname, ", ");
        END IF;
    UNTIL done END REPEAT;

    CLOSE cur;

    SELECT result AS All_Names;
END $$

DELIMITER ;