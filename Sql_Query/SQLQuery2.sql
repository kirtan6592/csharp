


create table #Employees(
EmpId int,
EmpName varchar(50)
)

insert into #Employees values('1','Test')
insert into #Employees values('2','Test 2')

create table #EmpTours(
EmpId int,
Region varchar(50),
TourStartDate datetime,
TourEndDate datetime,
)

insert into #EmpTours values('1','AHM',GETDATE()+1,GETDATE()+10)
insert into #EmpTours values('2','MUM',GETDATE()+15,GETDATE()+20)

create table #Orders(
EmpId int,
OrderDate datetime,
OrderType char(10),
OrderTotal int
)


insert into #Orders values('1',GETDATE()+1,'A','100')
insert into #Orders values('2',GETDATE()+10,'N','200')


DECLARE @date DATETIME
SELECT @date = '12/10/18'

--SELECT
--            e.EmpId,
--            e.EmpName,
--            et.Region,
--            et.TourStartDate,
--            et.TourEndDate,
--            FOrdDate = MIN(o.OrderDate),
--            LOrdDate = MAX(o.OrderDate)
--        FROM #Employees e INNER JOIN #EmpTours et
--          ON e.EmpId = et.EmpId INNER JOIN #Orders o
--          ON e.EmpId = o.EmpId
--       WHERE et.TourStartDate <= @date
--         AND (et.TourEndDate > = @date OR et.TourEndDate IS NULL)
--         AND o.OrderDate BETWEEN et.TourStartDate AND @date
--       GROUP BY e.EmpId,e.EmpName,et.Region,et.TourStartDate,et.TourEndDate
      
    


SELECT
      t1.EmpName,
      t1.Region,
      t1.TourStartDate,
      t1.TourEndDate,
      t1.FOrdDate,
      FOrdType  = MAX(CASE WHEN o.OrderDate = t1.FOrdDate THEN o.OrderType  ELSE NULL END),
      FOrdTotal = MAX(CASE WHEN o.OrderDate = t1.FOrdDate THEN o.OrderTotal ELSE NULL END),
      t1.LOrdDate,
      LOrdType  = MAX(CASE WHEN o.OrderDate = t1.LOrdDate THEN o.OrderType  ELSE NULL END),
      LOrdTotal = MAX(CASE WHEN o.OrderDate = t1.LOrdDate THEN o.OrderTotal ELSE NULL END)
  FROM 
      (
      SELECT
            e.EmpId,
            e.EmpName,
            et.Region,
            et.TourStartDate,
            et.TourEndDate,
            FOrdDate = MIN(o.OrderDate),
            LOrdDate = MAX(o.OrderDate)
        FROM #Employees e INNER JOIN #EmpTours et
          ON e.EmpId = et.EmpId INNER JOIN #Orders o
          ON e.EmpId = o.EmpId
       WHERE et.TourStartDate <= @date
         AND (et.TourEndDate > = @date OR et.TourEndDate IS NULL)
         AND o.OrderDate BETWEEN et.TourStartDate AND @date
       GROUP BY e.EmpId,e.EmpName,et.Region,et.TourStartDate,et.TourEndDate
      ) t1 INNER JOIN #Orders o
    ON t1.EmpId = o.EmpId
   AND (t1.FOrdDate = o.OrderDate OR t1.LOrdDate = o.OrderDate)
 GROUP BY t1.EmpName,t1.Region,t1.TourStartDate,t1.TourEndDate,t1.FOrdDate,t1.LOrdDate



 --Drop table #Employees
 --Drop table #EmpTours
 --Drop table #Orders



 select * from #Employees
 select * from #EmpTours
 select * from #Orders