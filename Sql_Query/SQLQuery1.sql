Declare @val1 int;  
Declare @val2 int;  
BEGIN TRY  
Set @val1=8;  
Set @val2=@val1/0; /* Error Occur Here */  
END TRY  
BEGIN CATCH  
Print 'Error Occur that is:'  
--Print Error_Number() 
SELECT ERROR_STATE() AS ErrorState , ERROR_MESSAGE() ErrorMsg , ERROR_LINE() LineNumber, ERROR_PROCEDURE() PROCEDUR, ERROR_SEVERITY() Priority;
RAISERROR('Err..',16,3)
--THROW 5000,'Err..',1
END CATCH



BEGIN TRANSACTION T1
	BEGIN TRY
		delete from tblEmployee where Id=8
		select * from tblEmployee where Id=8
		IF @@TRANCOUNT>0
		BEGIN COMMIT TRANSACTION T1
		END
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT>0
		PRINT 'ERR....'
		BEGIN ROLLBACK TRANSACTION T1
		END
	END CATCH


SET IDENTITY_INSERT tblEmployee ON
GO
DECLARE @i int
SET @i=7
WHILE @i<18
BEGIN
INSERT INTO tblEmployee(Id,FirstName,LastName,Email,Address,Mobile) values(@i ,concat('UT Firstname ', @i) ,concat('UT Lastname ', @i),concat('UT',@i,'@gmail.com'),concat('UT/',@i, ' Broad way, NJ,USA'),+1023456)
SET @i+=1
END
SET IDENTITY_INSERT tblEmployee OFF
GO


--delete from tblEmployee where Id BETWEEN 7 AND 17



sp_who





WITH cteData (value1) AS   
(   
SELECT 0   
UNION ALL   
SELECT 1   
)   
SELECT   
   CASE   
      WHEN MIN(value1) <= 0 THEN 0   
      WHEN MAX(value1/1) >= 1 THEN 1   
   END   
FROM cteData ;  


--CREATE TABLE budgets (  
--   dept           tinyint,  
--   current_year   decimal(10,2),  
--   previous_year  decimal(10,2)  
--);  

--INSERT INTO budgets VALUES(1, 100000, 150000);  
--INSERT INTO budgets VALUES(2, NULL, 300000);  
--INSERT INTO budgets VALUES(3, 0, 100000);  
--INSERT INTO budgets VALUES(4, NULL, 150000);  
--INSERT INTO budgets VALUES(5, 300000, 300000);  

SELECT * FROM budgets

SELECT dept, NULLIF(current_year,  
   previous_year) AS LastBudget  
FROM budgets;  


create table Person

(

PersonID nvarchar(5)primary key not null,

FirstName nvarchar(10)not null,

Company nvarchar(15)

)

 

create table PersonDetails

(

PersonID nvarchar(5)FOREIGN KEY REFERENCES dbo.Person(PersonID),

Address nvarchar(30)

)






Insert into Person values('Vidvr','Vidya Vrat','Lionbridge Inc'),('Rupag','Rupali','Pearl Solutions')
Insert into PersonDetails values('Vidvr','Bellevue WA 98007'),('Rupag','Bellevue WA 98007')



select * from Person
select * from PersonDetails




EXEC dbo.Sample_Procedure 'test 2','fname 1','Lionbridge Inc'


select * from Person


declare @name nvarchar(20)='test 1 ',
@fName char(10)='test 2',
@lname varchar(10)='test 3'
PRINT @name
PRINT DATALENGTH(@name)

select @name as Name, DATALENGTH(@name) as Name_Length_nvarchar, LEN(@name) as Name_LEN
select @fName as FirstName, DATALENGTH(@fName) as FName_Length_char, LEN(@fName) as FName_LEN
select @lname as LastName, DATALENGTH(@lname) as LName_Length_varchar, LEN(@lname) as LName_LEN







