SET datestyle = 'ISO, MDY';


DROP TABLE IF EXISTS DailyActivity_Cleaned;

CREATE TABLE DailyActivity_Cleaned(
  Id FLOAT,
  ActivityDate TIMESTAMP,
  TotalSteps INT,
  TotalDistance FLOAT,
  VeryActiveDistance FLOAT,
  ModeratelyActiveDistance FLOAT,
  LightActiveDistance FLOAT,
  SedentaryActiveDistance FLOAT,
  VeryActiveMinutes INT,
  FairlyActiveMinutes INT,
  LightlyActiveMinutes INT,
  SedentaryMinutes INT,
  Calories FLOAT
);

------------------------------------------------------------------------------------------------------------------------------

INSERT INTO DailyActivity_Cleaned(
  Id,
  ActivityDate,
  TotalSteps,
  TotalDistance,
  VeryActiveDistance,
  ModeratelyActiveDistance,
  LightActiveDistance,
  SedentaryActiveDistance,
  VeryActiveMinutes,
  FairlyActiveMinutes,
  LightlyActiveMinutes,
  SedentaryMinutes,
  Calories
)

SELECT
  Id,
  CAST(ActivityDate AS DATE) AS ActivityDate,
  TotalSteps,
  CAST(TotalDistance AS FLOAT) AS TotalDistance,
  CAST(VeryActiveDistance AS FLOAT) AS VeryActiveDistnace,
  CAST(ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
  CAST(LightActiveDistance AS FLOAT) AS LightActiveDistance,
  CAST(SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
  VeryActiveMinutes,
  FairlyActiveMinutes,
  LightlyActiveMinutes,
  SedentaryMinutes,
  Calories
FROM DailyActivity;

------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM DailyActivity_Cleaned;

------------------------------------------------------------------------------------------------------------------------------


-- Q.1) Number of rows and columns? 
SELECT COUNT(*) FROM DailyActivity_Cleaned; -- 940 Rows and

SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'dailyactivity_cleaned'; -- 13 Columns

