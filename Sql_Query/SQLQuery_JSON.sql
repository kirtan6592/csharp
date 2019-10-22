


USE Employee 
GO

select * from tblEmployee for JSON AUTO


select * from tblEmployee for JSON PATH


select * from openjson('[{"Id":1,"FirstName":"Test 1","LastName":"xyz","Email":"test@gmail.com","Address":"3\/t, twin tower, USA","Mobile":"1234567890"},{"Id":3,"FirstName":"test 2 update","LastName":"test 2 lastname","Email":"test.email@gmail.com","Address":"1\/O, Highe street, USA","Mobile":"123456789"},{"Id":6,"FirstName":"test 3","LastName":"test 3 ","Email":"test@gmail.com","Address":"test 3","Mobile":"1234567890"},{"Id":7,"FirstName":"UT Firstname 7","LastName":"UT Lastname 7","Email":"UT7@gmail.com","Address":"UT\/7 Broad way, NJ,USA","Mobile":"1023456"},{"Id":8,"FirstName":"UT Firstname 8","LastName":"UT Lastname 8","Email":"UT8@gmail.com","Address":"UT\/8 Broad way, NJ,USA","Mobile":"1023456"},{"Id":9,"FirstName":"UT Firstname 9","LastName":"UT Lastname 9","Email":"UT9@gmail.com","Address":"UT\/9 Broad way, NJ,USA","Mobile":"1023456"},{"Id":10,"FirstName":"UT Firstname 10","LastName":"UT Lastname 10","Email":"UT10@gmail.com","Address":"UT\/10 Broad way, NJ,USA","Mobile":"1023456"},{"Id":11,"FirstName":"UT Firstname 11","LastName":"UT Lastname 11","Email":"UT11@gmail.com","Address":"UT\/11 Broad way, NJ,USA","Mobile":"1023456"},{"Id":12,"FirstName":"UT Firstname 12","LastName":"UT Lastname 12","Email":"UT12@gmail.com","Address":"UT\/12 Broad way, NJ,USA","Mobile":"1023456"},{"Id":13,"FirstName":"UT Firstname 13","LastName":"UT Lastname 13","Email":"UT13@gmail.com","Address":"UT\/13 Broad way, NJ,USA","Mobile":"1023456"},{"Id":14,"FirstName":"UT Firstname 14","LastName":"UT Lastname 14","Email":"UT14@gmail.com","Address":"UT\/14 Broad way, NJ,USA","Mobile":"1023456"},{"Id":15,"FirstName":"UT Firstname 15","LastName":"UT Lastname 15","Email":"UT15@gmail.com","Address":"UT\/15 Broad way, NJ,USA","Mobile":"1023456"},{"Id":16,"FirstName":"UT Firstname 16","LastName":"UT Lastname 16","Email":"UT16@gmail.com","Address":"UT\/16 Broad way, NJ,USA","Mobile":"1023456"},{"Id":17,"FirstName":"UT Firstname 17","LastName":"UT Lastname 17","Email":"UT17@gmail.com","Address":"UT\/17 Broad way, NJ,USA","Mobile":"1023456"},{"Id":19731,"FirstName":"test httpheader","LastName":"t","Email":"test@gmail.com","Address":"test httpheader","Mobile":"1234"},{"Id":19732,"FirstName":"zz","LastName":"zz","Email":"test@gmail.com","Address":"zz","Mobile":"1223"}]')