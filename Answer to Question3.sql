SELECT TOP 2 *
FROM [dbo].[BikerDatav2]
WHERE end_station_name NOT IN ('Missing', 'Stolen')
AND start_station_id <> end_station_id
ORDER BY duration_minutes DESC;
