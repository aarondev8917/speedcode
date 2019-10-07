--http://dba.stackexchange.com/questions/9306/how-do-you-mysqldump-specific-tables
mysqldump -uroot -p swift nps_surveys nps_survey_options > dbv4.sql


--Without Data
--http://stackoverflow.com/questions/6175473/mysql-export-schema-without-data
mysqldump -u root -p --no-data dbname > schema.sql