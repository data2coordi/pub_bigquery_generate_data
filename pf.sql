select 'pf1', partid, clusterdid,CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev`
where clusterdid=1000000 and  partid = 10; 

select 'pf2', partid, clusterdid,CURRENT_TIMESTAMP()  from `ml_dataset.bigdata_for_ev` 
where clusterdid=50000000; 

select 'pf3', partid, seqid, CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev`
where seqid=1000000 and  partid = 10; 

select 'pf4', partid, seqid, CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev`
where seqid=1000000 ; 

select 'pf5', partid, num_col1, CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev`
where num_col1=100000000 ; 

select 'pf6', partid, num_col1, CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev`
where num_col1=50000000 ; 

select 'pf1 non partition ', partid, clusterdid,CURRENT_TIMESTAMP()  from `ml_dataset.bigdata_for_ev_nopart` 
where clusterdid=50000000; 

select 'pf2 non partition ', partid, seqid, CURRENT_TIMESTAMP() from `ml_dataset.bigdata_for_ev_nopart`
where seqid=1000000 ; 



SELECT
  query,
  total_bytes_processed AS processed_bytes,
  total_bytes_processed / 1024 / 1024  AS processed_MB,
  total_bytes_processed / 1024 / 1024 / 1024  * 1 AS Charges_yen,
  end_time-start_time,
  start_time,
  end_time,
  cache_hit,
  total_bytes_billed / 1024 / 1024 AS billed_MB,
FROM
`region-us-central1`.INFORMATION_SCHEMA.JOBS_BY_PROJECT
WHERE
  query like '%pf%ml_dataset%'  and query not like '%INFORMATION_SCHEMA%'
ORDER BY DATETIME(creation_time)  DESC
LIMIT 100;

