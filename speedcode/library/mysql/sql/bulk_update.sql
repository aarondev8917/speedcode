

-- http://stackoverflow.com/questions/11664684/how-to-bulk-update-mysql-data-with-one-query
INSERT into `table` (id,fruit)
VALUES (1,'apple'), (2,'orange'), (3,'peach')
ON DUPLICATE KEY UPDATE fruit = VALUES(fruit);

--CAVEATS




-- TO get the string VALUES for insert e.g:- VALUES (1,'apple'), (2,'orange'), (3,'peach')
-- use GROUP_CONCAT and CONCAT
select GROUP_CONCAT(CONCAT('(',invoiceID,',', affAid, ')')) from ss2logs where invoiceID in (63294899,63626088,70185542,70244322,70258872,70258137,70258511,70304482,70313931,70350124,70350731,70394942,70423380,70446769,70481468,70496792,70559067,70600558,70639227,70664697,70703890,70734964,70735628,70802793,70757688,70763052)






-- iF you have to run an update query for every signly entry, check if can get reduced by GROUP BY
select GROUP_CONCAT(invoiceID),affAid from ss2logs where invoiceID in (63294899,63626088,70185542,70244322,70258872,70258137,70258511,70304482,70313931,70350124,70350731,70394942,70423380,70446769,70481468,70496792,70559067,70600558,70639227,70664697,70703890,70734964,70735628,70802793,70757688,70763052)
GROUP BY affAID

--verify empty, update then again verify
SELECT userid FROM qu_pap_transactions WHERE transid IN (70639227,70258511);
UPDATE qu_pap_transactions SET userid = 'f501c481' WHERE transid IN (70639227,70258511)
SELECT userid FROM qu_pap_transactions WHERE transid IN (70639227,70258511);
