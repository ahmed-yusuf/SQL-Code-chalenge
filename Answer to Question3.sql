--	In the same table, return which particular trip has longest duration and the trip that has the shortest duration (return all the information(columns) on the table for this record) If more than 1 record has the same duration, return the earliest trip [start time]

SELECT TOP 2 *
FROM [dbo].[BikerDatav2]
WHERE end_station_name NOT IN ('Missing', 'Stolen')
AND start_station_id <> end_station_id
ORDER BY duration_minutes DESC;
