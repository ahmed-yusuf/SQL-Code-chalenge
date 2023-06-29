UPDATE [dbo].[BikerDatav2]
SET  [dbo].[BikerDatav2].start_time= REPLACE([dbo].[BikerDatav2].start_time, ' UTC', '');
SELECT * FROM [dbo].[BikerDatav2]

UPDATE [dbo].[BikerDatav2]
SET  [dbo].[BikerDatav2].start_time= CONVERT(DATETIME, [start_time], 120);;