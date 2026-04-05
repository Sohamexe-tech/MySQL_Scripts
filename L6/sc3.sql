DROP DATABASE IF EXISTS railway_db;
CREATE DATABASE railway_db;
USE railway_db;

CREATE TABLE ticket (
    booking_id INT UNSIGNED AUTO_INCREMENT,
    passenger_name VARCHAR(50),
    train_number CHAR(5),
    travel_date DATE,
    coach_number VARCHAR(5),
    seat_number VARCHAR(5),
    phone_number BIGINT,
    gender ENUM('Male','Female') DEFAULT 'Male',
    PRIMARY KEY (booking_id),
    UNIQUE (phone_number),
    CHECK (CHAR_LENGTH(train_number)=5)
) AUTO_INCREMENT = 1;

ALTER TABLE ticket DROP INDEX phone_number, ADD CONSTRAINT uk_phone UNIQUE (phone_number);

ALTER TABLE ticket DROP PRIMARY KEY, ADD PRIMARY KEY (booking_id, seat_number);

INSERT INTO ticket (booking_id, passenger_name, train_number, travel_date, coach_number, seat_number, phone_number, gender) VALUES
(1,'Soham Dalvi','12345','2026-04-10','C1','S1',9876543210,'Male'),
(2,'Priti Karia','54321','2026-04-12','B2','S2',9123456780,'Female'),
(3,'Tilak Verma','67890','2026-04-15','A1','S3',9988776655,'Male'),
(4,'Sneha Singh','98765','2026-04-18','D1','S4',9090909090,'Female');

DESC ticket;

SELECT * FROM ticket;

RENAME TABLE ticket TO rtickets;