
insert into `ml_dataset.bigdata_for_ev` 
SELECT
cast(ROW_NUMBER() OVER() /100000  as integer)
,ROW_NUMBER() OVER() 
,cast(cast(rand()*10 as integer) as string) 
,cast(cast(rand()*100 as integer) as string) 
,cast(cast(rand()*1000 as integer) as string) 
,cast(cast(rand()*10000 as integer) as string) 
,cast(cast(rand()*100000 as integer) as string) 
,cast(cast(rand()*1000000 as integer) as string) 
,cast(rand()*10000 as integer) 
,cast(rand()*10000 as integer)  
FROM 
`ml_dataset`.INFORMATION_SCHEMA.COLUMNS a,
`ml_dataset`.INFORMATION_SCHEMA.COLUMNS b,
`ml_dataset`.INFORMATION_SCHEMA.COLUMNS c,
`ml_dataset`.INFORMATION_SCHEMA.COLUMNS d,
`ml_dataset`.INFORMATION_SCHEMA.COLUMNS limit 100000000
;


--insert into `ml_dataset.bigdata_for_ev` 
--SELECT
--mod(ROW_NUMBER() OVER(),1000)
--,ROW_NUMBER() OVER() 
--,cast(cast(rand()*10 as integer) as string) 
--,cast(cast(rand()*100 as integer) as string) 
--,cast(cast(rand()*1000 as integer) as string) 
--,cast(cast(rand()*10000 as integer) as string) 
--,cast(cast(rand()*100000 as integer) as string) 
--,cast(cast(rand()*1000000 as integer) as string) 
--,cast(rand()*10000 as integer) 
--,cast(rand()*10000 as integer)  
--FROM UNNEST(GENERATE_ARRAY(1, 10))
--;




--			SELECT RAND() FROM UNNEST(GENERATE_ARRAY(1, 100))
--			TO_BASE64(HASH())
--			 ROW_NUMBER() OVER() AS rn

--1/1000 0
--2/1000 0 

--1001/1000 1
--1002/1000 1

--2001/1000 2
--2002/1000 2

--10001/1000 10
--10002/1000 10






