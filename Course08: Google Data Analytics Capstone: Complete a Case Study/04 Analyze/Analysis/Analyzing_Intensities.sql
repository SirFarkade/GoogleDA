-- Determine time when users were mostly active
SELECT 
	DISTINCT CAST(ActivityHour AS TIME) AS Activity_Time,
	AVG(hourlyactivity.totalintensities) OVER (PARTITION BY DATE_PART('hour', ActivityHour)) AS Average_Intensity,
	AVG(METs/10.0) OVER (PARTITION BY DATE_PART('hour', ActivityHour)) AS Average_METs
FROM HourlyActivity
JOIN minutemetsnaroow AS METs
ON HourlyActivity.ID = METs.ID AND HourlyActivity.ActivityHour = METs.ActivityMinute
ORDER BY Average_Intensity DESC;