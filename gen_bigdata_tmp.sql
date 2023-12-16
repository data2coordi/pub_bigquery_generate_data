
insert into `ml_dataset.bigdata_tmp` 
SELECT
ROW_NUMBER() OVER() 
FROM UNNEST(GENERATE_ARRAY(1, 10000))
;






