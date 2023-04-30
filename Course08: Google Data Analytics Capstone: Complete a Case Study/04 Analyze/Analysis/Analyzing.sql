-- Calculating number of users

-- Q.1) Tracking their physical activities
SELECT 
	COUNT(DISTINCT ID) AS Users_Tracking_Activity,
	AVG(TotalSteps) AS AVG_Steps,
	AVG(TotalDistance) AS AVG_Distance,
	AVG(Calories) AS AVG_Calories
FROM DailyActivity_Cleaned; -- 33

-- Q.2) Tracking their Heartrate
SELECT
	COUNT(DISTINCT ID) AS Usesr_Tracking_Heartrate,
	AVG(Value) AS AVG_Heartrate,
	MIN(Value) AS MIN_Heartrate,
	MAX(Value) AS MAX_Heartrate
FROM Heartrate_Seconds; -- 14

-- Q.3) Tracking Sleep
SELECT
	COUNT(DISTINCT ID) AS Usesr_Tracking_Sleep,
	AVG(TotalMinuteAsleep)/60.0 AS AVG_Hours_Asleep,
	MIN(TotalMinuteAsleep)/60.0 AS MIN_Hours_Asleep,
	MAX(TotalMinuteAsleep)/60.0 AS MAX_Hours_Asleep,
	AVG(TotalTimeInBed)/60.0 AS AVG_Hours_InBed
FROM SleepDay; -- 24


-- Q.4) Tracking Weight
SELECT 
	COUNT(DISTINCT ID) AS Users_Tracking_Weight,
	AVG(WeightKg) AS AVG_Weight,
	MIN(WeightKg) AS MIN_Weight,
	MAX(WeightKg) AS MAX_Weight
FROM WeightLogInfo_Cleaned; -- 8