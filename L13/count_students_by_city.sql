DELIMITER $$

DROP PROCEDURE IF EXISTS count_students_by_city $$
CREATE PROCEDURE count_students_by_city(IN cname VARCHAR(50))
BEGIN
    DECLARE cnt INT;

    SELECT COUNT(*) INTO cnt FROM student WHERE city = cname;

    IF cnt = 0 THEN
        SELECT "No Students Found" AS MSG;
    ELSE
        SELECT cnt AS Total_Students;
    END IF;
END $$

DELIMITER ;