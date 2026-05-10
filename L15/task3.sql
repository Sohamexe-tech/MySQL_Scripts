DELIMITER $$

DROP PROCEDURE IF EXISTS task3 $$
CREATE PROCEDURE task3()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sname VARCHAR(50);
    DECLARE result TEXT DEFAULT "";

    DECLARE cur CURSOR FOR SELECT name FROM student;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    abc: LOOP
        FETCH cur INTO sname;
        IF done = 1 THEN
            LEAVE abc;
        END IF;
        SET result = CONCAT(result, sname, ", ");
    END LOOP;

    CLOSE cur;

    SELECT result AS All_Names;
END $$

DELIMITER ;