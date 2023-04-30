-- Calculate the number of days each user tracked their Physical Activity

SELECT
	DISTINCT ID, 
	COUNT(ActivityDate) OVER (PARTITION BY ID) AS Days_Activity_Recorded
FROM DailyActivity_Cleaned
ORDER BY Days_Activity_Recorded DESC;


-- Calculate Average Minutes for each Activity

SELECT 
	ROUND(AVG(VeryActiveMinutes), 2) AS AverageVeryActiveMinutes,
	ROUND(AVG(FairlyActiveMinutes), 2) AS AverageFairlyActiveMinutes,
	ROUND(AVG(LightlyActiveMinutes)/60, 2) AS AverageLightlyActiveMinutes,
	ROUND(AVG(SedentaryMinutes)/60, 2) AS AverageSedentaryMinutes
FROM DailyActivity_Cleaned;