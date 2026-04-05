DROP DATABASE IF EXISTS transport_db;
CREATE DATABASE transport_db;
USE transport_db;

CREATE TABLE vehicles (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_name VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 1001;

ALTER TABLE vehicles
ADD type ENUM('Car','Truck','Bus');

ALTER TABLE vehicles ADD features SET('AC','GPS','MusicSystem','Camera') AFTER vehicle_name;

ALTER TABLE vehicles ADD year YEAR;

ALTER TABLE vehicles ADD mileage DECIMAL(8,2);

ALTER TABLE vehicles MODIFY vehicle_name VARCHAR(50);

ALTER TABLE vehicles CHANGE vehicle_name model_name VARCHAR(50);

ALTER TABLE vehicles MODIFY type ENUM('Car','Truck','Bus','Cycle');

INSERT INTO vehicles (model_name, type, features, year, mileage) VALUES
('Swift','Car','AC,GPS',2018,18.50),
('Activa','Cycle','GPS',2020,45.00),
('Volvo Bus','Bus','AC,MusicSystem,Camera',2015,6.75),
('Tata Truck','Truck','GPS,Camera',2017,10.25);

DESC vehicles;

SELECT * FROM vehicles;

ALTER TABLE vehicles

DROP COLUMN features;

DESC vehicles;

SELECT * FROM vehicles;

