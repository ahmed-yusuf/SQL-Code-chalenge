--#Question1:On which day of the week do we on average have the longest trip?
SELECT TOP 1 DATEPART(WEEKDAY, start_time) AS day_of_week, AVG(duration_minutes) AS average_duration
FROM BikerDatav2
GROUP BY DATEPART(WEEKDAY, start_time)
ORDER BY average_duration DESC;
