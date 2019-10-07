-- SELECT c.dstchannel as agent,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c 
-- WHERE dstchannel IN ('aishwarya.ki','aishwarya.y','anson.d','asha.s','shreeshaa.t','carol.l','Mrinal.r','muhammadsufi.h','sanchita.h','katherine.b','pooja.gai','anvit.b') 
-- AND c.calldate BETWEEN '2017-08-01 00:00:00' AND '2017-08-31 23:59:59' 
-- GROUP BY agent 
-- UNION 
-- SELECT c.dst,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c
-- WHERE c.dst IN ('6568','6571','6573','6601','6625','6637','8553','8554','8555','6529','6523','6532','2061')  
-- AND c.calldate BETWEEN '2017-08-01 00:00:00' AND '2017-08-31 23:59:59' 
-- GROUP BY c.dst
--select * from static_queue_members where membername like 'rhea%' limit 5


-- SELECT substring_index(channel,'-',1) AS
-- Ext, qm.membername as agent,
-- COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,
-- COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,
-- COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,
-- COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy
-- FROM cdr c INNER JOIN static_queue_members qm ON
-- SUBSTRING(substring_index(c.channel,'-',1),-4) =
-- SUBSTRING(qm.interface,-4)
-- WHERE c.calldate BETWEEN '2017-09-01 00:00:00' AND '2017-09-11 23:59:59' 
-- AND (c.channel LIKE 'SIP/%-%')
-- AND c.dst not in ('0','8','s')
-- AND queue_name in ('rclub_newbiz_queue','rclub_salesuk_queue','rclub_sales_queue')
-- AND qm.membername in ('harshil.s','aditya.g','yash.s','katherine.b','trent.r','asha.s','shreeshaa.t','sanchita.h','shikha.d','anvit.b','mrinal.r','rhea.t','ravikumar.s','aishwarya.ki')
-- GROUP BY substring_index(c.channel,'-',1)
-- ORDER BY substring_index(TRIM(LEADING 'SIP/' from c.channel),'-',1)
-- SELECT c.dstchannel as agent,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c 
-- WHERE dstchannel IN ('aishwarya.ki','anson.d','asha.s','shreeshaa.t','carol.l','Mrinal.r','muhammadsufi.h','sanchita.h','katherine.b','pooja.gai','anvit.b','shikha.d','trent.r','harshil.s','yash.s') 
-- AND c.calldate BETWEEN '2017-09-01 00:00:00' AND '2017-09-31 23:59:59' 
-- GROUP BY agent 
-- UNION 
-- SELECT c.dst,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c
-- WHERE c.dst IN ('6568','6571','6573','6601','6625','6637','8553','8554','8555','6529','6523','6532','2061')  
-- AND c.calldate BETWEEN '2017-09-01 00:00:00' AND '2017-09-30 23:59:59' 
-- GROUP BY c.dst

-- SELECT c.dstchannel as agent,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS answered,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c 
-- WHERE dstchannel IN ('aishwarya.ki','anson.d','muhammadsufi.h','sanchita.h','katherine.b','pooja.gai','anvit.b','shikha.d','trent.r','harshil.s','yash.s','aditya.g') 
-- AND c.calldate BETWEEN '2017-10-01 00:00:00' AND '2017-10-31 23:59:59' 
-- GROUP BY agent 
-- UNION 
-- SELECT c.dst,COUNT(if(c.disposition = 'ANSWERED', 1, NULL)) AS `answered`,COUNT(if(c.disposition = 'NO ANSWER', 1, NULL)) AS `no_answer`,COUNT(if(c.disposition = 'FAILED', 1, NULL)) AS `failed`,COUNT(if(c.disposition = 'BUSY', 1, NULL)) AS busy,SUM(1) as total 
-- FROM cdr c 
-- WHERE c.dst IN ('6571','6573','6625','8553','8554','8555','6529','6523','6532','2061','6543','6553')  
-- AND c.calldate BETWEEN '2017-10-01 00:00:00' AND '2017-10-31 23:59:59' 
-- GROUP BY c.dst


select eaq.eaqid as actionid,
dom.orderid order_id,
dom.domainname domain_name,
eaq.actiontype action_type,
eaq.actiontypedesc action_description,
eaq.actionstatus status,
eaq.actionstatusdesc status_description,
dom.parentkey parent_key,
p.*,
round(((getepoch(now()) - eaq.actionstarted)/(3600.0)),2) action_time_in_hrs
from entity_action_queue  eaq
inner join  entitytype et on et.entitytypeid = eaq.entitytypeid
inner join  product p on p.productkey = et.productkey
inner join domorder dom on dom.orderid = eaq.entityid
where p.productcategory = 'domorder' and eaq.actioncompleted is null and eaq.actionstarted is not null and actionstatus not in ('PENDING_REGISTRANT_AUTHORIZATION', 'TransferRequestSent', 'InvoicePaid', 'RestoreReportSubmited', 'AuthorizationPending', 'DomSecretProvided', 'AdminApproved', 'ValidateAuthInfo', 'PendingRegistrarVerification','CheckContactApproval')
and eaq.actiontype in ('AddNewDomain','RenewDomain')
and eaq.actionstatusdesc not in ('Waiting for domain to be released')
and get_business_unit_for_sdn(parentkey) = 'ResellerClub' and eaq.actionstarted > getepoch('2018-09-29 00:00:00') and round(((getepoch(now()) - eaq.statusupdatetime)/(3600.0)),2) > 0.30 order by action_time_in_hrs desc

--select  distinct(actionstatus), actiontype from entity_action_queue where actiontype = 'RenewDomain'