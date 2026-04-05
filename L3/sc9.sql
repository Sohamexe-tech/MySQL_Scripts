DROP DATABASE IF EXISTS music_db;
CREATE DATABASE IF NOT EXISTS music_db;
USE music_db;

CREATE TABLE listeners (
    user_id     BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(50) NOT NULL,
    account     ENUM('Free', 'Premium') DEFAULT 'Free',
    preferences SET('Songs', 'Podcasts', 'Audiobooks', 'Live Concerts') DEFAULT 'Songs'
);

INSERT INTO listeners (name) VALUES ('Nimish');
INSERT INTO listeners (name, account, preferences) VALUES ('Soham', 'Premium', 'Songs,Podcasts');
INSERT INTO listeners (name, preferences) VALUES ('Shelby', 'Audiobooks,Live Concerts');