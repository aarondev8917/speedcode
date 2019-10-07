--http://stackoverflow.com/questions/5038040/mysql-make-an-existing-field-unique

ALTER IGNORE TABLE mytbl ADD UNIQUE (columnName);
--If IGNORE is specified, only the first row is used of rows with duplicates on a unique key, The other conflicting rows are deleted.
--For anybody stumbling upon this using 5.6.7 or greater, IGNORE is no longer supported (check this)