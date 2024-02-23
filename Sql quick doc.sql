create table CustomerDetails(
Custid int not null,
Cust_Name varchar(20),
Mobile int,
Address varchar(50),
Email varchar(30)
);

create table EmployeeDetails (
EmpId int,
firstname varchar (20),
lastname varchar (20),
Email varchar (20),
Phone  varchar (20),
salary int
);
	
create  table Employees(
Empid int not null,
EmpName varchar(20),
Job varchar(30),
DeptNo int,
salary int 
);
alter table Employees add Hiredate nvarchar(20);
update  Employees set Hiredate='jan-6-2023' where Empid=101;
insert table Employees(
select* from Employees
insert into Employees(Empid,EmpName,Job,DeptNo,salary,Hiredate) values('','','6-jan-2023');
update  Employees set Hiredate='May' where Empid=102;
update  Employees set Hiredate=23 where Empid=101;


insert into Employees(Empid,EmpName,Job,DeptNo,salary) values(101,'John','analyst',10,18000);
insert into Employees(Empid,EmpName,Job,DeptNo,salary) values(102,'Jack','president',11,19000);
insert into Employees(Empid,EmpName,Job,DeptNo,salary) values(103,'rose','clerk',12,20000);
insert into Employees(Empid,EmpName,Job,DeptNo,salary) values(104,'nick','salesman',13,21000);
insert into Employees(Empid,EmpName,Job,DeptNo,salary) values(105,'paul','Administartor',14,22000);


insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(101,'ravi', 'a','ravihyd@gmail.com',9090909090,30000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(102,'hari', 'b','harihyd@gmail.com',9090909091,40000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(103,'siva', 'c','sivahyd@gmail.com',9090909092,35000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(104,'ramu', 'd','ramuhyd@gmail.com',9090909093,45000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(105,'revi', 'e','revihyd@gmail.com',9090909094,50000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(106,'rosy', 'f','rosyhyd@gmail.com',9090909095,55000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(107,'richy', 'g','richyhyd@gmail.com',9090909096,56000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(108,'ruchi', 'h','ruchyhyd@gmail.com',9090909097,57000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(109,'raji', 'i','rajihyd@gmail.com',9090909098,58000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(110,'mac', 'j','machyd@gmail.com',9090909099,59000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(111,'nick', 'k','nickhyd@gmail.com',9090909010,60000);
insert into EmployeeDetails(EmpId,firstname,lastname,Email,Phone,salary) values(121,'carrie', 'l','carriehyd@gmail.com',9090909011,61000);










insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(22,'hari',9191919191,'cyd','hari@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(33,'siva',9292929292,'secund','sivagmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(44,'ram',9393939393,'cyber','ram@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(55,'revi',9494949494,'bnglr','revi@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(66,'ramu',9595959595,'chnn','ramu@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(77,'rosy',9696969696,'mysore','rosy@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(88,'richy',9797979797,'pune','richy@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(99,'ruchy',9898989898,'mumb','ruchy@gmail.com');
insert into CustomerDetails(custid,Cust_Name,Mobile,Address,Email) values(21,'raji',8989898989,'kolkata','raji@gmail.com');

 select * from EmployeeDetails
  select * from CustomerDetails

 ----alter----add a column
 alter table employeedetails
 add address varchar(30);


 
--- Rename ---
alter table EmployeeDetails Rename  column Phone To Mobile;

--DRop--
alter table EmployeeDetails drop column address;
Drop table CustomerDetails;

--Truncate---
truncate table CustomerDetails

---Update--
update EmployeeDetails set salary=35000 where EmpId=102;
update EmployeeDetails set salary=replace(salary,35000,40000) where EmpId=103;

---Delete---
Delete from EmployeeDetails where firstname='revi';

---And operator--when all the conditions are true
select * from EmployeeDetails where firstname='ravi' and lastname='a';

----Or operator---when only the  one conditions are true
select * from EmployeeDetails where  EmpId=107 or lastname='g';

----Not----
select * from EmployeeDetails where not lastname='g';
select * from EmployeeDetails where not lastname='h' and not firstname='ruchi';
select * from EmployeeDetails where EmpId <>121;

----In--
select * from Employees where Job IN('clerk','salesman','president','analyst') and DeptNo IN(12,13,11,10);

--Not In--
select * from  Employees where DeptNo  Not In(13,12);

---IS---To compare with null we use is operator
select * from Employees where Job is not null;
select * from Employees where Job is  null;

----Like---
------%---n no.of characters
---_(underscore)---only single character---

select * from Employees where EmpName like  'J%';---(starts with j)
select * from Employees where Job like '%t';----(ends with t)
select * from Employees where EmpName like '_a%';-----(2nd character is a)
select * from Employees where EmpName like '__h%';---(3rd character is h)
select * from Employees where EmpName like '%ck';---(Ends with ck)
select * from Employees where EmpName like '%c_';----(last but one char or second last char is c)
select * from Employees where EmpName like 'n%k';---(starts with m end with n)
select * from Employees where Job like 'president%';---(job starts with president)
select * from Employees where EmpName like '%a%';---(consists atleast one a)
select * from Employees where EmpName like '%a%a%';---(consists atleast two a)
select * from Employees where EmpName like '%a%' and EmpName Not like '%a%a%';---(consists exactly one a)
select * from Employees where EmpName like '%aa%';---(consecutive  two  a)
select * from Employees where EmpName like '-----';---(consists of 5 characters)
select * from Employees where HireDate like '%May%';---(consists atleast one a)
select * from Employees where HireDate like '%23%';---(consists atleast one a)

-----stored procedure--(write the same query over and over again ,it executes only once)
create procedure SPEmployeeDetails
as
begin
select EmpId,firstname,lastname from EmployeeDetails---(Employeedetails is a existing table)
end

Exec SpEmployeeDetails;----To execute the stored procedure.

---Drop Procedure---
drop procedure[if exists] <SpEmployeeDetails>;

----Stored procedure with Parameter---
create proc SPEmployeeDetailsbyname @firstname varchar(20),@lastname varchar(20)
as
begin
select Empid,firstname,salary from EmployeeDetails where firstname=@firstname and lastname=@lastname
end

exec SPEmployeeDetailsbyname @firstname='ravi',@lastname='a' ;

---Delete Procedure---
drop procedure SPEmployeeDetailsbyname;

select *from EmployeeDetails;
Select * from Employees;
Select * from  CustomerDetails;

------ GroupBy clause----(organizing the similar data into groups)
select  job,sum(salary) as totalsalary
from Employees
group by DeptNo;
-----
select Job,min(salary) as totalsalary from Employees group by Job;

-----order by-----(It is used to sort the records in ascending order or descending order)

select empid,Job,sum(salary) as totalsalary
from Employees
group by Job,empid
order by Job;----(orderby it will give result by alphabetic order)
---
select * from Employees where Job='salesman' order by EmpName Asc;
select * from Employees where Job='salesman' order by EmpName Desc;
select * from Employees  order by EmpName Asc;


-----where---(It is used to fetch the data according to a particualr criteria)

select * from Employees where Job='President';
select * from Employees where salary  between 20000 and 22000;

   -----Joins-----

create table professors(
Id int,
Name varchar(20),
salary int
);

create table teachers(
course_id int,
prof_id int,
course_name varchar(20)
);

INSERT INTO professors VALUES (1, 'Rohan', 57000);
INSERT INTO professors VALUES (2, 'Aryan', 45000);
INSERT INTO professors VALUES (3, 'Arpit', 60000);
INSERT INTO professors VALUES (4, 'Harsh', 50000);
INSERT INTO professors VALUES (5, 'Tara', 55000);

INSERT INTO teachers VALUES (1, 1, 'English');
INSERT INTO teachers VALUES (1, 3, 'Physics');
INSERT INTO teachers VALUES (2, 4, 'Chemistry');
INSERT INTO teachers VALUES (2, 5, 'Mathematics');

select* from professors
select* from teachers

----Inner Join---
select teachers.course_id,teachers.prof_id, professors.name,professors.salary
from professors inner join teachers on professors.Id=teachers.prof_id;

----outer joins----
create table student(
studentId int,
Lastname varchar(20),
Firstname varchar(20),
Address varchar(50),
City varchar(30)
);
INSERT INTO student(studentId,Lastname,Firstname,Address,City)VALUES(111, 'James', 'Johnson','USA','california');

select * from student

CREATE TABLE Studentss (      
  id int PRIMARY KEY IDENTITY,     
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
);    
  
  select * from Studentss
  select * from Fee
  CREATE TABLE Fee (   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid int,    
);  

INSERT INTO Studentss (admission_no, first_name, last_name, age, city) VALUES (3354,'Luisa', 'Evans', 13, 'Texas');      
      INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values  (2135, 'Paul', 'Ward', 15, 'Alaska');     
    INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values (4321, 'Peter', 'Bennett', 14, 'California') ;  
     insert INTO Studentss (admission_no, first_name, last_name, age, city) values  (4213,'Carlos', 'Patterson', 17, 'New York') ;     
    INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values  (5112, 'Rose', 'Huges', 16, 'Florida');  
    INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values   (6113, 'Marielia', 'Simmons', 15, 'Arizona');  
   INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values (7555,'Antonio', 'Butler', 14, 'New York');      
     INSERT INTO Studentss (admission_no, first_name, last_name, age, city) values (8345, 'Diego', 'Cox', 13, 'California');  
     

	 INSERT INTO Fee (admission_no, course, amount_paid) VALUES (3354,'Java', 20000);    
	INSERT INTO Fee (admission_no, course, amount_paid)   VALUES    (7555, 'Android', 22000);     
INSERT INTO Fee (admission_no, course, amount_paid)  VALUES   (4321, 'Python', 18000);   
  INSERT INTO Fee (admission_no, course, amount_paid)VALUES(8345,'SQL', 15000);       
       INSERT INTO Fee (admission_no, course, amount_paid)VALUES (5112, 'Machine Learning', 30000); 

	   select * from Studentss
	   select * from Fee
	   -----inner join---
	   select Studentss.id,Studentss.city,Fee.amount_paid
	   from Studentss
	   inner join Fee
	   on Studentss.admission_no=Fee.admission_no

	   -----left outer join---
	   select Studentss.admission_no,Studentss.first_name,Studentss.last_name,Fee.course,Fee.amount_paid
	   from Studentss
	   left outer Join Fee
	   On Studentss.admission_no=Fee.admission_no;
	   ------Right outer join---
	    select Studentss.admission_no,Studentss.first_name,Studentss.last_name,Fee.course,Fee.amount_paid
	   from Studentss
	   Right outer Join Fee
	   On Studentss.admission_no=Fee.admission_no;
	   -------full outer join----
	   	    select Studentss.admission_no,Studentss.first_name,Studentss.last_name,Fee.course,Fee.amount_paid
	   from Studentss
	   Full outer Join Fee
	   On Studentss.admission_no=Fee.admission_no;
	   -----Cross Join---
	   	    select Studentss.admission_no,Studentss.first_name,Studentss.last_name,Fee.course,Fee.amount_paid
	   from Studentss
	   cross  Join Fee
---------self join---
select Studentss.admission_no,Fee.course
from Studentss ,Fee 
where Studentss.admission_no = Fee.admission_no;

	   ----Functions---
	  ------ Upper----
create table dual(
name varchar(20)
);
insert into dual(name) values('divya');
insert into dual(name) values('rupa');
 insert into dual(name) values('president');
 insert into dual(name) values('analyst');
insert into dual(name) values('clerk');
select * from dual
select upper('divya') from DUAL;----(upper , it converts all letters in a uppercase) 
select lower('divya') from DUAL;----(lower, it converts all letters in a lowercase)
select INITCAP ('divya') from DUAL;----(initcap , it converts first word to upper case and remaining letters to lowercase)

----Concat---(It is used to join multiple strings)
select CONCAT ('computer','science') from dual;
select CONCAT(null,null) from dual; --o/p:null

----- Length----(It is used to find the length of the name or given string)
select first_name ,length(first_name)
from Studentss;

CREATE TABLE Employee_Grade  
(  
Employee_ID INT PRIMARY KEY,    
First_Name VARCHAR (100),    
Last_Name VARCHAR (100),   
First_City Varchar(120),  
Second_City Varchar(120),  
New_City Varchar(120),  
Attendance_Remarks INT,   
Work_Remarks INT,   
Grade Varchar (80)  
);  

INSERT INTO Employee_Grade (Employee_ID, First_Name, Last_Name, First_City, Second_City, New_City, Attendance_Remarks, Work_Remarks, Grade) VALUES (10, 'Ramesh', 'Sharma', 'Lucknow', 'Aurangabad', 'Ghaziabad', 88, 95, 'A2');  
INSERT INTO Employee_Grade(Employee_ID, First_Name, Last_Name, First_City, Second_City, New_City, Attendance_Remarks, Work_Remarks, Grade)   VALUES ( 02, 'Yadu', 'Sharma', 'Aurangabad', 'Ghaziabad', 'Noida', 95, 82, 'A1' );  
INSERT INTO Employee_Grade  (Employee_ID, First_Name, Last_Name, First_City, Second_City, New_City, Attendance_Remarks, Work_Remarks, Grade) VALUES (07, 'Vijay', 'Ramna', 'Noida', 'Ghaziabad', 'Lucknow', 91, 95, 'A1');  
INSERT INTO Employee_Grade   (Employee_ID, First_Name, Last_Name, First_City, Second_City, New_City, Attendance_Remarks, Work_Remarks, Grade)   VALUES (04, 'Bhanu', 'Rangopalr', 'Ghaziabad', 'Noida', 'Lucknow', 85, 82, 'A2');  
 
 SELECT * FROM Employee_Grade;   
 SELECT First_Name, LEN(First_Name) AS LENGTH_FirstName FROM Employee_Grade;  
 select len('learning is fun') from dual;---o/p--15
 select  First_Name ,LEN(First_Name) from Employee_Grade
 select * from Employee_Grade where  len(First_Name)>=5;----atleast 5----
  select * from Employee_Grade where  len(First_Name)=5;---exactly----
  select * from Employee_Grade where len(First_Name)=5 & len(New_City)=5;
 select * from Employee_Grade where len(New_City)>=8;------minimum 8 chars---

 -----Reverse----(It is used to given the reverse string)--
   select  First_Name ,Reverse(First_Name) from Employee_Grade---it gives firstname details in output.

   ------Substring-----
   SELECT SUBSTRING('Database Management System', 9,7) FROM DUAL;---manage---
   select First_Name,SUBSTRING(First_Name,1,1) from Employee_Grade;---first character in their name---
   select  First_City, SUBSTRING(First_City,2,1) from Employee_Grade;---first 2characters or second character--
   select Second_City, SUBSTRING(Second_City,-2,1) from Employee_Grade;--last character---
   select * 
   from Employee_Grade 
   where SUBSTRING(Second_City,2,1)='h';---whose name second character is a--

   select * 
   from Employee_Grade 
   where SUBSTRING(New_City,-1,1)='w';
  -----
  ----instr----
  SELECT INSTRING('Google apps are great applications','app',1,2) FROM DUAL;
  select First_Name, INSTR(First_Name,'A',1,1) from Employee_Grade;
  SELECT Instring( 'JAVATPOINT',' P ') AS INSTR_P_Position;  ---o/p:6-- p's place is 6.

  ---reverse---(it gives the string as reverse)
  select First_Name,REVERSE(First_Name) As Reverse_FirstName from Employee_Grade;
  select First_City, REVERSE(First_City) as reverse_FirstCity from Employee_Grade;
    select First_City, REVERSE(New_City) as reverse_NewCity from Employee_Grade;
	    select New_City, REVERSE(New_City) as reverse_NewCity from Employee_Grade;

		----Replace---
		select Last_Name,Replace(Last_Name,'a','r')as replace_a_r from Employee_Grade;
		select REPLACE('Ghaziabad','a','h') as replace_a_h from Employee_Grade;
		select replace(New_City,'d','h')as replace_a_h from Employee_Grade;
		select replace(Work_Remarks,82,85) as replace_82_85 from Employee_Grade;
		Select Grade ,replace(Grade,'A2','A1') as replace_A2_A1 from Employee_Grade;

		---Trim---(remove the specify string)---
		---Left Trim---
		select LTRIM('Noida','i');
		select LTRIM(' javatpoint','geeks ');---javatpoint--
		select Ltrim(' new Delhi is the capital of India','new delhi is the');---capital of india
		select Trim(' Javatpoint');
		select LTrim('###98221545##','#');---98221545###---
		select LTrim('202120212021javaTpoint','2021');---javatpoint--
		select LTRIM('90287javaTpoint','0123456789');--javatpoint--it removes the individual occurence of numbers of the trimmed string.
		------Right Trim---
				select Rtrim(' new Delhi is the capital of India','capital of india');---new delhi is the
				select RTrim('###98221545##','#');---###98221545---
				select RTrim('2021javaTpoint2021','2021');---2021javatpoint--
				----Trim---
		select trim(leading 'mysql' from 'mysql_javatpoint');----_javatpoint--
		select trim(both 'mysql' from 'mysql_javatpoint_mysql');---_javatpoint_----
		select trim(trailing 'mysql' from 'mysql_javatpoint_mysql');---mysql_javatpoint_---

		-----Number Functions---
		---sqrt--
		select sqrt(100);
		select sqrt(36) as result1
		select sqrt(64) as result
		----Pi----
		select pi()
		---square---
		select SQUARE(25);
		select square(10);
		select square(4);
		----Round---
		select round(125.35,2)
		select round(125.35,1)
		----ceiling---it gives next highest value
		select CEILING(45.56)---46
		---floor---next lowest value
		select floor(45.56)----45--
----General conversions--
--nvl1----
select IsNull(15,20) as result from dual;--( or )---select IsNull(15,20) from dual;
select IsNull(null,20) from dual;
select ISNULL(1.027584,1.0275384) from dual;
 select IsNull(NULL , 7.0124375) from dual;  
 select isnull('JAMES' , 'ANDERSON') from dual;  

 -----Conversions---
 Create table Employes(
Employe_id int primary Key,
First_name varchar(30),
Salary int);
Insert into Employes(Employe_id,First_name,Salary) values(100,'steven',24000)
Insert into Employes(Employe_id,First_name,Salary) values(101,'Neena' ,17000)
Insert into Employes(Employe_id,First_name,Salary) values(102,'Lex' ,17000)
Insert into Employes(Employe_id,First_name,Salary) values(103,'John' ,11000)
Insert into Employes(Employe_id,First_name,Salary) values(104,'Robert' ,12000)
Insert into Employes(Employe_id,First_name,Salary) values(105,'leo' ,10000);

Insert into Employes(Employe_id,First_name,Salary) values(105,'leo' ,10000);
select * from Employes

alter table Employes add  Hire_date varchar(20);
Select Employe_id,First_name,Salary from Employes where Salary>'15000';---15000--
Select Employe_id,First_name,Salary from Employes where Salary>15000;---15000-
----the above two conditions gives same result ,the only difference is we taken as a text in '15000'---
-----Expilict-----
----To-char---with dates--To_char(date,'format_model')
select Employe_id, Convert("Hire_date",'MM/yy') from Employes where First_name='John';
SELECT CONVERT(DATETIME, '2021-04-26') AS Result;  
SELECT CONVERT(VARCHAR, GETDATE(), 13) AS Result;  


-----Date Functions---
select CURTIME();---it returns current date and time.
SELECT CURDATE();
SELECT DATEDIFF('2017-01-13','2017-01-03') AS DateDiff;
select Last_Day(sysDate) from dual;

------views------------

Create  table StudentMarks(
id int,
Name varchar(20),
Marks varchar(20),
Age int
);
Insert into StudentMarks(id,name,marks,age) values(1,'harsh',90,19);
Insert into StudentMarks(id,name,marks,age) values(2,'suresh' ,50,19);
Insert into StudentMarks(id,name,marks,age) values(3,'pratik' ,85,19);
Insert into StudentMarks(id,name,marks,age) values(4,'dhanraj' ,95,21);
Insert into StudentMarks(id,name,marks,age) values(5,'ram' ,85,18);
select * from StudentMarks;

Create table StudentDetails(
s_id int,
name varchar(20),
address varchar(30)
);
	Insert into StudentDetails(s_id,name,address) values(1,'harsh','kolkata' );
	Insert into StudentDetails(s_id,name,address) values( 2,'ashish','durgapur');
	Insert into StudentDetails(s_id,name,address) values( 3,'Pratik','delhi');
	Insert into StudentDetails(s_id,name,address) values( 4,'Dhanraj','bihar');
	Insert into StudentDetails(s_id,name,address) values(5,'ram','rajasthan' );
	select * from StudentDetails
	select * from StudentMarks
	
--------Creating a view from a single table--------
create view detailsview 
as 
 Select name,address
From StudentDetails
Where s_id<5;

Select * from StudentDetails;
select * from detailsview;
----------
create view StudentNameview 
as
select s_id,name 
from StudentDetails 
order by name;

--------index-----
create index index_name On StudentDetails(name);
create index index_address On StudentDetails(address);

select * from StudentDetails where name='ram';
select * from StudentDetails where address='bihar';
----------------------------------
create view detailsview 
as
select name,address from StudentDetails
where s_id=4

---------------Joins----
Create table StudentList(
Roll_No int ,
Name varchar(20),
Address varchar(20),
Phone int,
Age int
);
select * from StudentList;

insert into StudentList(Roll_No, Name, Address,Phone, Age) values (1,'john','us',9999988888,20);
insert into StudentList(Roll_No,Name,Address,Phone,Age) values(1,'harsh','delhi',9898989898,17);
insert into StudentList(Roll_NO,Name,Address,Phone,Age) values(2,'pratik','Bihar',8989898989,15);
insert into StudentList(Roll_NO,Name,Address,Phone,Age) values(3,'riyanka','silguri',9090909090,18);
insert into StudentList(Roll_NO,Name,Address,Phone,Age) values(4,'Deep','ramnagar',9767767667,16);
insert into StudentList(Roll_NO,Name,Address,Phone,Age) values(5,'saptarhi','kolkata',9054544545,14);
insert into StudentList(Roll_NO,Name,Address,Phone,Age) values(6,'dhanraj','barabajar',9432232323,13);

insert into StudentList(Roll_No,Name,Address,Phone,Age) values(2,'pratika','Bihar',8989898989,15);
Create table Students_Lists(
Roll_No int not null,
Name varchar(20),
Address varchar(20),
Phone varchar,
Age varchar
);

insert into Students_Lists(Roll_No,Name,Address,Phone,Age)values(1,'Divya','us',9087654321,25);
 select * from Studentss
 select * from Fee

 create view course_enrolled
 as
 select first_name,last_name,course,amount_paid
 from studentss as S
 inner join Fee as F
 on S.admission_no=F.admission_no;
 
 select * from course_enrolled;
 ----------Rename view---
 sp_rename course_enrolled ,coursevw

 ---Update view--
 alter view coursevw
 as
 select first_name,last_name,course,city,amount_paid
 from Studentss as S
 Inner join Fee as F
 On S.admission_no=F.admission_no;
 
 select * from coursevw;

 ----drop view---
 drop view coursevw;
 ------------------------Triggers---------------------

 Create table EmployeeTr(
Id int primary key,
Name varchar(45),
Salary int,
Gender varchar(12),
Departmentid int
)
INSERT INTO EmployeeTr VALUES (1,'Steffan', 82000, 'Male', 3);  
INSERT INTO EmployeeTr VALUES(2,'Amelie', 52000, 'Female', 2);
INSERT INTO EmployeeTr VALUES(3,'Antonio', 25000, 'male', 1); 

INSERT INTO EmployeeTr VALUES(4,'Marco', 47000, 'Male', 2); 

INSERT INTO EmployeeTr VALUES(5,'Eliana', 46000, 'Female', 3);  
SELECT * FROM EmployeeTr;  

CREATE TABLE Employee_Audit_Test  
(    
Id int IDENTITY,   
Audit_Action text   
)  
---------insert trigger------
create trigger trinsertEmployee
on EmployeeTr
for insert
as
begin
declare @Id int
select @Id=Id from inserted
insert into Employee_Audit_Test
values('new employee with id=' + CAST(@Id as varchar(10))+'is added at'+ cast(Getdate() as varchar(22)))
end;
INSERT INTO EmployeeTr VALUES (6,'Peter', 62000, 'Male', 3)  
select * from trinsertEmployee;

CREATE TRIGGER trDeleteEmployee   
ON EmployeeTr  
FOR DELETE  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from deleted  
  INSERT INTO Employee_Audit_Test  
  VALUES ('An existing employee with Id = ' + CAST(@Id AS VARCHAR(10))+'is deleted at '+ cast(getdate() as varchar(22)))
  end
  DELETE FROM EmployeeTr WHERE Id = 2;  

  select * from Employee_Audit_Test;

  ----------------------------
  -------Create  table for Trigger----
    CREATE TABLE EmpLog (
	LogID int IDENTITY(1,1) NOT NULL,
	EmpID int NOT NULL,
	Operation nvarchar(10) NOT NULL,
	UpdatedDate Datetime NOT NULL	
)

-----create trigger for insert using For----
create trigger dbo.trgEmployeeInsert
on dbo.Employee
for insert
as
insert into dbo.Emplog(EmpId,Operation,UpdatedDate)
select EmployeeId,'insert',GETDATE() from inserted
select * from dbo.EmpLog
-----------------------------------------
------------------delete--------------------
create trigger dbo.trgEmployeeInsert
on dbo.Employee
After update
as
insert into dbo.Emplog(EmpId,Operation,UpdatedDate)
select EmployeeId,'insert',GETDATE() from deleted
select * from dbo.EmpLog
------------------------------
-----union & union all-------
create table Student1(
Stud_id int not null,
Name varchar(20),
Email nvarchar(30),
City varchar(20),
);
Insert into Student1(Stud_id, Name, Email,City) values(1,'peter','peter@javatpoint.com','texas');
Insert into Student1(Stud_id, Name, Email,City) values(2,'suz','suzi@javatpoint.com','california')

Insert into Student1(Stud_id, Name, Email,City) values(3,'joseph' ,'joseph@javatpoint.com','alaska');

Insert into Student1(Stud_id, Name, Email,City) values(4,'andrew' ,'andrew@javatpoint.com','losangeles');

Insert into Student1(Stud_id, Name, Email,City) values(5,'Brayan' ,'brayan@javatpoint.com','newyork');

Stud_id int not null,
Name varchar(20),
Create table student2(
Email nvarchar(30),
City varchar(20)
);
Insert into Student2(Stud_id, Name, Email,City) values(1,'stephen' ,'stephen@javatpoint.com','texas');
Insert into Student2(Stud_id, Name, Email,City) values(2,'joseph','joseph@javatpoint.com','losangeles');
Insert into Student2(Stud_id, Name, Email,City) values(3,'peter','peter@javatpoint.com','california');
Insert into Student2(Stud_id, Name, Email,City) values(4,'david','david@javatpoint.com','newyork');
Insert into Student2(Stud_id, Name, Email,City) values(5,'maddy','maddy@javatpoint.com','losangeles');

select * from Student1;
Select * from student2;

Select City from student1
Union----------it returns the same columns but only same fields , no duplicate values are not allowed.
Select city from student2
Order by city;
------union all----
Select City , Stud_id from student1
Union all-----------------it returns the same columns only the same fields, It can accept duplicate values.
Select city ,Stud_id from student2
Order by city;

--------sub query--------------
create table Employeeinfo(
id int ,
name varchar(20),
age int,
address varchar(30),
salary int);
insert into Employeeinfo(id,name,age,address,salary) values(1,'john',20,'us',2000);
insert into Employeeinfo(id,name,age,address,salary) values(2,'stephen',26,'dubai',1500);
insert into Employeeinfo(id,name,age,address,salary) values(3,'david',27,'bangok',2000);
insert into Employeeinfo(id,name,age,address,salary) values(4,'alina',29,'uk',6500);
insert into Employeeinfo(id,name,age,address,salary) values(5,'kathrin',34,'bangalore',8500);
insert into Employeeinfo(id,name,age,address,salary) values(6,'harry',42,'china',4500);
insert into Employeeinfo(id,name,age,address,salary) values(7,'jackson',25,'mizoram',10000);

select * from Employeeinfo;

select * 
from Employeeinfo
where id in
(select id from Employeeinfo where salary>4500);

insert into Employee_BKP
select * from Employeeinfo
where id in
(select id from Employeeinfo);

create table Employee_BKP
(id int ,
name varchar(20),
Last_name varchar(20)
);

insert into Employee_BKP(id,name,Last_name)values(1,'teja','akki');
insert into Employee_BKP(id,name,Last_name)values(2,'aswini','akk');
insert into Employee_BKP(id,name,Last_name)values(3,'chitti','aki');

select * from Employee_BKP;
--------update---------
update Employeeinfo
set salary=salary*0.25
where age in(select age from Employee_BKP
where age>=29);
alter table Employee_BKP add age int;
---------------delete---------
delete from Employeeinfo
where id in(select id from Employee_BKP
where id=2);