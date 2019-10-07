--http://stackoverflow.com/questions/20036547/mysql-grant-read-only-options
GRANT SELECT ON *.* TO 'username'@'host_or_wildcard' IDENTIFIED BY 'password';


--This is the password used to connect to the db
GRANT SELECT ON vtigercrm510.* TO 'username'@'host_or_wildcard' IDENTIFIED BY 'password';