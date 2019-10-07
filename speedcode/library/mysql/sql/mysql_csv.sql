-- http://stackoverflow.com/questions/356578/how-to-output-mysql-query-results-in-csv-format?rq=1
-- WARNING!!: This method would not work if the database is on a remote server where files cannot be created (permission issues)
-- WARNING!!: Using this command columns names will not be exported.
SELECT order_id,product_name,qty
FROM orders
WHERE foo = 'bar'
INTO OUTFILE '/tmp/orders.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
