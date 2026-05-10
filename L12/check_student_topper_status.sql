USE kc_db;
DELIMITER $$

DROP PROCEDURE IF EXISTS check_student_topper_status $$

CREATE PROCEDURE check_student_topper_status(IN r INT)
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE mks DOUBLE;
    DECLARE max_mks DOUBLE;

    SELECT COUNT(*) INTO cnt FROM student WHERE rno = r;

    IF cnt = 0 THEN
        SELECT "Invalid Roll Number" AS MSG;
    ELSE
        SELECT marks INTO mks FROM student WHERE rno = r;
        SELECT MAX(marks) INTO max_mks FROM student;

        IF mks = max_mks THEN
            SELECT "Topper" AS MSG;
        ELSE
            SELECT "Not Topper" AS MSG;
        END IF;
    END IF;
END $$

DELIMITER ;