-- http://stackoverflow.com/questions/1361340/how-to-insert-if-not-exists-in-mysql?rq=1
-- Use update id=id assignment, so that MySQL optimization engine ignore this operation
-- Advantage of this method is that it only ignores duplicate key events, and still aborts on other errors.
-- USE THIS
INSERT INTO table (a,b,c) VALUES (1,2,3)
  ON DUPLICATE KEY UPDATE c=c+1;


-- WARNING!! - If you use the IGNORE keyword, errors that occur while executing the INSERT statement are treated as warnings instead. For example, without IGNORE, a row that duplicates an existing UNIQUE index or PRIMARY KEY value in the table causes a duplicate-key error and the statement is aborted
-- DONT USE THIS
INSERT IGNORE INTO `transcripts`
SET `ensembl_transcript_id` = ‘ENSORGT00000000001′,
`transcript_chrom_start` = 12345,
`transcript_chrom_end` = 12678;




--http://stackoverflow.com/questions/3432/multiple-updates-in-mysql?lq=1
-- Multiple updates in MySQL
INSERT INTO table (id,Col1,Col2) VALUES (1,1,1),(2,2,3),(3,9,3),(4,10,12)
ON DUPLICATE KEY UPDATE Col1=VALUES(Col1),Col2=VALUES(Col2);