CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'mysql'@'localhost' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON inception.* TO 'mysql'@'localhost' IDENTIFIED BY 'mysql';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'toor';
use mysql;
repair table user;
repair table db;
