CREATE DATABASE kit;

USE kit;

-- Step 1: Create new database
CREATE DATABASE kcs;

-- Step 2: Export old database (run in command prompt, not MySQL)
mysqldump -u root -p kit > kit.sql

-- Step 3: Import into new database
mysql -u root -p kcs < kit.sql

-- Step 4: Drop old database
DROP DATABASE kit;

USE kcs;

DROP DATABASE kit;
CREATE DATABASE kcs;
USE kcs;


