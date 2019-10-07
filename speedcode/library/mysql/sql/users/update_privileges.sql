
http://stackoverflow.com/questions/1709078/how-can-i-restore-the-mysql-root-user-s-full-privileges
UPDATE mysql.user SET Grant_priv='Y', Super_priv='Y',Select_priv='Y',Insert_priv='Y',Update_priv='Y',Delete_priv='Y' WHERE User='root';
FLUSH PRIVILEGES;
GRANT ALL ON *.* TO 'root'@'%';