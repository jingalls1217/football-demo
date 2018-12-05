CREATE DATABASE hive;

CREATE USER 'hive'@'localhost' IDENTIFIED BY 'H!v3_1234';

GRANT ALL PRIVILEGES ON *.* TO 'hive'@'localhost';

CREATE USER 'hive'@'%' IDENTIFIED BY 'H!v3_1234';

GRANT ALL PRIVILEGES ON *.* TO 'hive'@'%';

CREATE USER 'hive'@'jingalls-nfl-1.field.hortonworks.com' IDENTIFIED BY 'H!v3_1234';

GRANT ALL PRIVILEGES ON *.* TO 'hive'@'jingalls-nfl-1.field.hortonworks.com';

FLUSH PRIVILEGES;
