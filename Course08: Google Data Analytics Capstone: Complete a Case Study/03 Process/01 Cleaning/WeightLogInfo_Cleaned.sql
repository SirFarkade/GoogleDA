SET datestyle = 'ISO, MDY';

DROP TABLE IF EXISTS WeightLogInfo_Cleaned;


CREATE TABLE WeightLogInfo_Cleaned(
	ID  FLOAT,
	DATE TIMESTAMP,
	WeightKg FLOAT);
	
------------------------------------------------------------------------------------------------------------------------------

INSERT INTO WeightLogInfo_Cleaned 
SELECT 
	ID,
	CAST(Date AS DATE) AS Date,
	WeightKg
FROM WeightLogInfo;

------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM WeightLogInfo_Cleaned;

------------------------------------------------------------------------------------------------------------------------------

-- Q.1) Number of rows and columns? 
SELECT COUNT(*) FROM WeightLogInfo_Cleaned; -- 67 Rows and

SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'weightloginfo_cleaned'; -- 3 Columns