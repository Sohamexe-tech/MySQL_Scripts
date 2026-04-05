DROP DATABASE IF EXISTS hospital_db;
CREATE DATABASE hospital_db;
USE hospital_db;

CREATE TABLE patients (
    patient_id  INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(50),
    email_id VARCHAR(100) UNIQUE,
    phone_number BIGINT UNIQUE,
    gender ENUM('M','F'),
    disease VARCHAR(100)
);

INSERT INTO patients (name, email_id, phone_number, gender, disease) VALUES
('Soham Dalvi','Soham@gmail.com',9876543210,'M','Fever'),
('Shreya Mehta','Shreya@gmail.com',9123456780,'F','Diabetes'),
('Nimish Dalvi','Nimish@gmail.com',9988776655,'M','Asthma'),
('Mehal Naxine','Mehal@gmail.com',9090909090,'F','Flu');

DESC patients;

SELECT * FROM patients;