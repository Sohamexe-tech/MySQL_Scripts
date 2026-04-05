DROP DATABASE IF EXISTS flight_db;
CREATE DATABASE flight_db;
USE flight_db;

CREATE TABLE bookings (
    booking_id INT,
    passenger_name VARCHAR(50),
    flight_number CHAR(5),
    travel_date DATE,
    seat_number INT,
    email_id VARCHAR(100),
    phone_number BIGINT,
    PRIMARY KEY (booking_id),
    UNIQUE (passenger_name),
    UNIQUE (email_id),
    CONSTRAINT uk_phone UNIQUE (phone_number),
    CONSTRAINT seat_chk CHECK (seat_number BETWEEN 1 AND 200)
);

ALTER TABLE bookings MODIFY booking_id INT AUTO_INCREMENT;

ALTER TABLE bookings DROP INDEX passenger_name;

ALTER TABLE bookings ADD COLUMN gender ENUM('m','f') DEFAULT 'm' AFTER passenger_name;

ALTER TABLE bookings ADD CONSTRAINT uk_fts UNIQUE (flight_number, travel_date, seat_number);

ALTER TABLE bookings DROP INDEX uk_phone;
ALTER TABLE bookings ADD CONSTRAINT uk_phone_number UNIQUE (phone_number);

INSERT INTO bookings (passenger_name, gender, flight_number, travel_date, seat_number, email_id, phone_number) VALUES
('Soham', 'm', 'AI101', '2026-04-10', 25, 'soham@gmail.com', 9876543210),
('Rahul', 'm', 'AI102', '2026-04-11', 30, 'rahul@gmail.com', 9123456780),
('Anita', 'f', 'AI101', '2026-04-10', 26, 'anita@gmail.com', 9988776655);

DESC bookings;

SELECT * FROM bookings;