DELIMITER $$

DROP PROCEDURE IF EXISTS task1 $$
CREATE PROCEDURE task1()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sname VARCHAR(50);
    DECLARE result TEXT DEFAULT "";

    DECLARE cur CURSOR FOR SELECT name FROM student;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: WHILE done = 0 DO
        FETCH cur INTO sname;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;
        SET result = CONCAT(result, sname, ", ");
    END WHILE;

    CLOSE cur;

    SELECT result AS All_Names;
END $$

DELIMITER ;