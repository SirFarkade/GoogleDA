In this phase, the following actions were performed using SQL queries:

Cleaned the HourlyActivity table by creating a new table called HourlyActivity_Cleaned with the appropriate data types and inserting the cleaned data into it. The cleaned table contains 22,099 rows and 6 columns, including the ID, ActivityHour, StepTotal, Calories, TotalIntensities, and AverageIntensity.

Cleaned the DailyActivity table by creating a new table called DailyActivity_Cleaned with the appropriate data types and inserting the cleaned data into it. The cleaned table contains 940 rows and 13 columns, including the ID, ActivityDate, TotalSteps, TotalDistance, VeryActiveDistance, ModeratelyActiveDistance, LightActiveDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes, and Calories.

Cleaned the WeightLogInfo table by creating a new table called WeightLogInfo_Cleaned with the appropriate data types and inserting the cleaned data into it. The cleaned table contains 67 rows and 3 columns, including the ID, Date, and WeightKg.

Some of the specific cleaning tasks performed include:

Converting the ActivityHour column in the HourlyActivity table to a TIMESTAMP data type using the CAST function.
Converting the ActivityDate column in the DailyActivity table to a DATE data type using the CAST function, and converting the TotalDistance, VeryActiveDistance, ModeratelyActiveDistance, LightActiveDistance, and SedentaryActiveDistance columns to FLOAT data types using the CAST function.
Converting the Date column in the WeightLogInfo table to a DATE data type using the CAST function.
Overall, these cleaning actions ensure that the data is in the correct format and ready for further analysis. By creating new tables with cleaned data, the original tables remain untouched and can be used for reference if needed. The use of appropriate data types ensures that calculations and analysis can be performed accurately and efficiently.
