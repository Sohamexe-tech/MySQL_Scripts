USE kc_db;
DELIMITER $$

DROP PROCEDURE IF EXISTS check_student_average_status $$

CREATE PROCEDURE check_student_average_status(IN r INT)
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE mks DOUBLE;
    DECLARE avg_mks DOUBLE;

    SELECT COUNT(*) INTO cnt FROM student WHERE rno = r;

    IF cnt = 0 THEN
        SELECT "Invalid Roll Number" AS MSG;
    ELSE
        SELECT marks INTO mks FROM student WHERE rno = r;
        SELECT AVG(marks) INTO avg_mks FROM student;

        IF mks >= avg_mks THEN
            SELECT "Above Average" AS MSG;
        ELSE
            SELECT "Below Average" AS MSG;
        END IF;
    END IF;
END $$

DELIMITER ;