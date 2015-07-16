-- SET PASSWORD FOR 'debian-sys-maint'@'localhost' = PASSWORD('letmein');
-- CREATE USER 'debian-sys-maint'@'localhost' IDENTIFIED BY 'letmein';
-- CREATE USER 'debian-sys-maint'@'%' IDENTIFIED BY 'letmein';
GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY 'letmein' WITH GRANT OPTION;
FLUSH PRIVILEGES;
