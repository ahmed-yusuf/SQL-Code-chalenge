--Question2:What month/year has the most bike trips and what is the count of the trips?
SELECT TOP 1 DATEPART(MONTH, start_time) AS month, DATEPART(YEAR, start_time) AS year, COUNT(*) AS trip_count
FROM [dbo].[BikerDatav2]
GROUP BY DATEPART(MONTH, start_time), DATEPART(YEAR, start_time)
ORDER BY trip_count DESC
