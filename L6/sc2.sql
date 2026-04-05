DROP DATABASE IF EXISTS school_db;
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students (
    rno INT UNSIGNED,
    name VARCHAR(50) NOT NULL,
    email_id VARCHAR(100),
    phone_number BIGINT,
    aadhaar_number CHAR(12),
    school_name VARCHAR(100) NOT NULL,
    division CHAR(1) NOT NULL,
    PRIMARY KEY (rno, division),
    UNIQUE (email_id),
    UNIQUE (phone_number),
    CONSTRAINT uk_aadhaar UNIQUE (aadhaar_number),
    CHECK ((CHAR_LENGTH(phone_number) = 10) and (CHAR_LENGTH(aadhaar_number) = 12))
     
);

INSERT INTO students (rno, name, email_id, phone_number, aadhaar_number, school_name, division) VALUES
(1,'Soham Dalvi','soham@gmail.com',9876543210,'123456789012','ABC School','A'),
(2,'Priti Karia','priti@gmail.com',9123456780,'234567890123','XYZ School','B'),
(3,'Tilak Verma','tilak@gmail.com',9988776655,'345678901234','ABC School','A'),
(4,'Sneha Singh','sneha@gmail.com',9090909090,'456789012345','XYZ School','C');

DESC students;

SELECT * FROM students;