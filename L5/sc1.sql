DROP DATABASE IF EXISTS cinema_db;
CREATE DATABASE IF NOT EXISTS cinema_db;
USE cinema_db;

CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    duration INT,
    ticket_price DECIMAL(8,2),
    movie_language ENUM('EN','HI','MR') DEFAULT 'HI',
    CHECK (duration BETWEEN 60 AND 300),
    CHECK (ticket_price > 0)
) AUTO_INCREMENT = 100;

DESC movies;

INSERT INTO movies (title, duration, ticket_price, movie_language)
VALUES 
('3 Idiots', 170, 250.00, 'HI'),
('Inception', 148, 300.50, 'EN'),
('Dhurandhar', 174, 200.00, 'MR'),
('Dangal', 161, 275.75, 'HI'),
('Avengers: Endgame', 181, 350.00, 'EN');

INSERT INTO movies (title, duration, ticket_price)
VALUES 
('Lagaan', 224, 220.00),
('Drishyam', 163, 210.00);

SELECT * FROM movies;