CREATE USER 'nfladmin'@'localhost' IDENTIFIED BY 'NFLdemo2018!';

GRANT ALL PRIVILEGES ON *.* TO 'nfladmin'@'localhost';

CREATE USER 'nfladmin'@'%' IDENTIFIED BY 'NFLdemo2018!';

GRANT ALL PRIVILEGES ON *.* TO 'nfladmin'@'%';

CREATE USER 'nfladmin'@'jingalls-nfl-1.field.hortonworks.com' IDENTIFIED BY 'NFLdemo2018!';

GRANT ALL PRIVILEGES ON *.* TO 'nfladmin'@'jingalls-nfl-1.field.hortonworks.com';

FLUSH PRIVILEGES;

