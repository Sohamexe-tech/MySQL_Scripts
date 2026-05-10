DELIMITER $$

DROP PROCEDURE IF EXISTS city_topper $$
CREATE PROCEDURE city_topper(IN cname VARCHAR(50))
BEGIN
    DECLARE max_marks DOUBLE;

    SELECT MAX(marks) INTO max_marks FROM student WHERE city = cname;

    IF max_marks IS NULL THEN
        SELECT "City Not Found" AS MSG;
    ELSE
        SELECT max_marks AS Highest_Marks;
    END IF;
END $$

DELIMITER ;