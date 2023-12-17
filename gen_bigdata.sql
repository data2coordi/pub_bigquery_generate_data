
insert into `ml_dataset.bigdata_for_ev` 
SELECT
	cast(ROW_NUMBER() OVER() /1000000  as integer)
	,ROW_NUMBER() OVER() 
	,ROW_NUMBER() OVER() 
	,cast(rand()*100000000 as integer) 
	,cast(cast(rand()*1 as integer) as string) 
	,cast(cast(rand()*10 as integer) as string) 
	,cast(cast(rand()*100 as integer) as string) 
	,cast(cast(rand()*1000 as integer) as string) 
	,cast(cast(rand()*10000 as integer) as string) 
	,cast(cast(rand()*100000 as integer) as string) 
FROM 
	UNNEST(GENERATE_ARRAY(1, 21627)),
	`ml_dataset`.INFORMATION_SCHEMA.COLUMNS a,
	`ml_dataset`.INFORMATION_SCHEMA.COLUMNS b
;

