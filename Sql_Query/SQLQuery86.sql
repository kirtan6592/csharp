

SET NOCOUNT ON
SET IDENTITY_INSERT TempTeble ON 

Declare @i as int=6110;
while @i <= 30000
BEGIN

	INSERT INTO TempTeble(Id,Name,Email,Phone,Address) VALUES(@i, concat('test ', @i), 'test@gmail.com', '1234567890', concat('Test Address ',@i));
	set @i+=1;

END 
SET IDENTITY_INSERT TempTeble OFF
SET NOCOUNT OFF 




select * from TempTeble T1
JOIN TempTeble T2
ON T1.Id = T2.Id where T1.Name = 'test 29963' 

select * from TempTeble T1
JOIN TempTeble T2
ON T1.Id = T2.Id where T1.Id=29963

select * from TempTeble where Id > 20000

select * from TempTeble where Id=29963
select * from TempTeble where Name='test 29963'



Create NONCLUSTERED INDEX IX_NONCluster_Index_TempTeble ON TempTeble(Name)




SELECT   INDEXPROPERTY(OBJECT_ID('dbo.TempTeble'),  'IX_Cluster_Index_TempTeble','IndexDepth') AS [Index Depth]
 
