
select 
	count(*) ct, 
	min(partid)  min_partid, 
	max(partid)  max_partid, 
	min(clusterdid)  min_clusterdid, 
	max(clusterdid)  max_clusterdid,
	min(seqid)  min_seqid, 
	max(seqid)  max_seqid,
	min(num_col1)  max_seqid,
	max(num_col1)  max_seqid
from `ml_dataset.bigdata_for_ev` ;

return;

select partid, clusterdid,str_col1,str_col2
from `ml_dataset.bigdata_for_ev` 
where partid!=-1 
order by partid desc, clusterdid
limit  10;

return;

select count(*)
from `ml_dataset.bigdata_for_ev` 
where partid!=-1 limit 1;
