SET datestyle = 'ISO, MDY';

DROP TABLE IF EXISTS HourlyActivity_Cleaned;


CREATE TABLE HourlyActivity_Cleaned(
	ID BIGINT,
	ActivityHour TIMESTAMP,
	StepTotal INT,
	Calories INT,
	TotalIntensities INT,
	AverageIntensity FLOAT);
	
------------------------------------------------------------------------------------------------------------------------------

INSERT INTO HourlyActivity_Cleaned 
SELECT 
	ID,
	CAST(ActivityHour AS TIMESTAMP) AS ActivityHour,
	StepTotal INT,
	Calories INT,
	TotalIntensities INT,
	AverageIntensity FLOAT
FROM HourlyActivity;

------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM HourlyActivity_Cleaned;

------------------------------------------------------------------------------------------------------------------------------

-- Q.1) Number of rows and columns? 
SELECT COUNT(*) FROM HourlyActivity_Cleaned; -- 22099 Rows and

SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'hourlyactivity_cleaned'; -- 6 Columns