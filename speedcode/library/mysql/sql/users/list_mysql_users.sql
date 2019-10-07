http://stackoverflow.com/questions/1135245/how-to-get-a-list-of-mysql-user-accounts
SELECT * FROM mysql.user;


http://stackoverflow.com/questions/14779104/how-to-allow-remote-connection-to-mysql
Another useful command
---------------------
select user, host, password from mysql.user;


Allow Remote connection to mysql
------------------------------------
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
 FLUSH PRIVILEGES;

/etc/mysql/my.cnf - Unix/OSX systems
my.ini            - C:\Program Files\MySQL\MySQL Server 5.5\
Change line
 bind-address = 127.0.0.1
to
 #bind-address = 127.0.0.1
(basically comment it out)