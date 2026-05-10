DELIMITER $$

DROP PROCEDURE IF EXISTS calculate_student_scholarship $$
CREATE PROCEDURE calculate_student_scholarship(IN r INT)
BEGIN
    DECLARE m DOUBLE;

    SELECT marks INTO m FROM student WHERE rno = r;

    IF m IS NULL THEN
        SELECT "Invalid Roll Number" AS MSG;

    ELSEIF m >= 90 THEN
        SELECT 10000 AS Scholarship;

    ELSEIF m >= 75 THEN
        SELECT 5000 AS Scholarship;

    ELSEIF m >= 60 THEN
        SELECT 2000 AS Scholarship;

    ELSE
        SELECT 0 AS Scholarship;
    END IF;
END $$

DELIMITER ;