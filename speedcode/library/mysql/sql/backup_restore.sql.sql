Restore
-----------
mysql -u<user> -p mydatabasename < db_backup.dump


mysql -uroot -p support_risky < product_keys_reasons.sql



Backup
--------
mysqldump: Got error: 1044: "Access denied for user 'cmadmin'@'%' to database 'cm_vmdb'" when using LOCK TABLES


https://www.linode.com/docs/databases/mysql/use-mysqldump-to-back-up-mysql-or-mariadb/#back-up-a-database
"mysqldump -h 172.27.183.66 -u cmadmin -p cm_vmdb --lock-tables=false > cmvbdb.sql"

