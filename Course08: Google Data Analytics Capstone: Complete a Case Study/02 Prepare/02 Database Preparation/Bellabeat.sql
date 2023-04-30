-- list all the available databases
--\l
SELECT datname FROM pg_database WHERE datistemplate = false;

-- create a database named 'Bellabeat'
-- same
CREATE DATABASE "Bellabeat";

-- check again 
-- \l
SELECT datname FROM pg_database WHERE datistemplate = false;

-- connect to database
\c dtName

-- list all the tables
-- \dt
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

-- create table for dailyActivity 
CREATE TABLE fitness_data (
  Id INT NOT NULL,
  ActivityDate DATE NOT NULL,
  TotalSteps INT,
  TotalDistance FLOAT,
  TrackerDistance FLOAT,
  LoggedActivitiesDistance FLOAT,
  VeryActiveDistance FLOAT,
  ModeratelyActiveDistance FLOAT,
  LightActiveDistance FLOAT,
  SedentaryActiveDistance FLOAT,
  VeryActiveMinutes INT,
  FairlyActiveMinutes INT,
  LightlyActiveMinutes INT,
  SedentaryMinutes INT,
  Calories INT,
  PRIMARY KEY (Id, ActivityDate)
);


-- rename the table
ALTER TABLE fitness_data RENAME TO dailyActivity;

-- check if renamed
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';


-- changing the date column type as there is some issue with the source data itself
ALTER TABLE dailyactivity
ALTER COLUMN activitydate TYPE text;


-- changing the id column type from int to bigint as there's a values that is out of range
ALTER TABLE dailyactivity 
ALTER COLUMN ID TYPE bigint;


-- successfully imported
SELECT * FROM dailyActivity;


------------------------------------------------------------------------------------------------------------------------------

-- Create HourlyActivity Table
DROP TABLE IF EXISTS HourlyActivity;

CREATE TABLE HourlyActivity(
	ID BIGINT,
	ActivityHour TEXT,
	StepTotal INT,
	Calories INT,
	TotalIntensities INT,
	AverageIntensity FLOAT);
------------------------------------------------------------------------------------------------------------------------------

-- Creating a table for Heartrate per Second
CREATE TABLE Heartrate_Seconds(
	ID  FLOAT NOT NULL,
	Time TEXT,
	Value INT);

-- The file has dates in the format MMDDYYYY and Postgres by default uses DDMMYYYY
-- To change it:
SET datestyle = 'MDY';
-- Did not work

-- Drop for text column or change with ALTER 
DROP TABLE IF EXISTS Heartrate_Seconds;
--OR 
ALTER TABLE Heartrate_Seconds
ALTER COLUMN Time TYPE TEXT;

-- Show Table
SELECT * FROM Heartrate_Seconds;

-- No of Column and Rows = 3*2483658, 24M That's too much 
SELECT COUNT(*) FROM Heartrate_Seconds;

------------------------------------------------------------------------------------------------------------------------------

-- Creating a table for Minute METs Narrow
CREATE TABLE minuteMETsNaroow(
	ID  FLOAT NOT NULL,
	ActivityMinute TEXT,
	METs INT);

------------------------------------------------------------------------------------------------------------------------------

-- Creating a table for minute merged Sleep
CREATE TABLE minuteSleepMerged(
	ID  FLOAT NOT NULL,
	Date TEXT,
	Value INT,
	Logid FLOAT);
 
------------------------------------------------------------------------------------------------------------------------------

-- Creating a table for merged sleep day
CREATE TABLE SleepDay(
	ID  FLOAT NOT NULL,
	SleepDay TEXT,
	TotalSleepRecord INT,
	TotalMinuteAsleep INT,
	TotalTimeInBed INT);
	
------------------------------------------------------------------------------------------------------------------------------

-- Creating a table for Weight log info
CREATE TABLE WeightLogInfo(
	ID  FLOAT NOT NULL,
	DATE TEXT,
	WeightKg INT,
	WeightPound INT,
	Fat INT,
	BMI FLOAT,
	IsManualReport BIT,
	LogId FLOAT);
	
	
-- Changing Data type of WeightKg and WeightPound Column to FLOAT AND IsManualReport to TEXT

ALTER TABLE WeightLogInfo 
ALTER COLUMN WeightKg TYPE FLOAT, 
ALTER COLUMN WeightPound TYPE FLOAT,
ALTER COLUMN IsManualReport TYPE TEXT;
------------------------------------------------------------------------------------------------------------------------------