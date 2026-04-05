DROP DATABASE IF EXISTS hotel_db;
CREATE DATABASE IF NOT EXISTS hotel_db;
USE hotel_db;

CREATE TABLE rooms (
    room_no    TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    room_type  ENUM('Single', 'Double', 'Suite') DEFAULT 'Single',
    facilities SET('WiFi', 'TV', 'AC', 'Balcony')
);

INSERT INTO rooms (room_type, facilities) VALUES ('Double', 'WiFi,TV,AC');
INSERT INTO rooms (facilities)            VALUES ('WiFi,Balcony');
INSERT INTO rooms (room_type)             VALUES ('Suite');