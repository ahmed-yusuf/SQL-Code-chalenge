--#Replace the utc in the starttime column to be able to convert into an appropriate date format

UPDATE [dbo].[BikerDatav2]
SET  [dbo].[BikerDatav2].start_time= REPLACE([dbo].[BikerDatav2].start_time, ' UTC', '');
SELECT * FROM [dbo].[BikerDatav2]


#convertinh column into date format for better analysis
UPDATE [dbo].[BikerDatav2]
SET  [dbo].[BikerDatav2].start_time= CONVERT(DATETIME, [start_time], 120);
