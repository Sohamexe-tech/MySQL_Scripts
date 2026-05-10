DELIMITER $$

DROP PROCEDURE IF EXISTS calculate_student_grade $$
CREATE PROCEDURE calculate_student_grade(IN r INT)
BEGIN
    DECLARE m DOUBLE;

    SELECT marks INTO m FROM student WHERE rno = r;

    IF m IS NULL THEN
        SELECT "Invalid Roll Number" AS MSG;

    ELSE
        CASE
            WHEN m >= 90 THEN SELECT 'A' AS Grade;
            WHEN m >= 75 THEN SELECT 'B' AS Grade;
            WHEN m >= 50 THEN SELECT 'C' AS Grade;
            ELSE SELECT 'D' AS Grade;
        END CASE;
    END IF;
END $$

DELIMITER ;