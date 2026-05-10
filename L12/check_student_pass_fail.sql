USE kc_db;
DELIMITER $$

DROP PROCEDURE IF EXISTS check_student_pass_fail $$

CREATE PROCEDURE check_student_pass_fail(IN r INT)
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE mks DOUBLE DEFAULT 0;

    SELECT COUNT(*) INTO cnt FROM student WHERE rno = r;

    IF cnt = 0 THEN
        SELECT "Student Not Found" AS MSG;
    ELSE
        SELECT marks INTO mks FROM student WHERE rno = r;

        IF mks >= 40 THEN
            SELECT "PASS" AS MSG;
        ELSE
            SELECT "FAIL" AS MSG;
        END IF;
    END IF;
END $$

DELIMITER ;