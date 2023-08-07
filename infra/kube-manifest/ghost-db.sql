-- Create the database
CREATE DATABASE IF NOT EXISTS `ghost-v5`;

-- Create the user remember to change password asshole
CREATE USER 'ghost_user'@'%' IDENTIFIED BY 'h3ll0w0rld';

-- Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON `ghost-v5`.* TO 'ghost_user'@'%';

-- Flush privileges
FLUSH PRIVILEGES;
