-- Create the first Table
/* The CREATE TABLE statement is used to create a new table in a database.
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
); */
CREATE TABLE EmployeeDemographics (
    EmployeeID int,
    FirstName varchar(50),
    LastName varchart( 50),
    Age int ,
    Gender varchar( 50)
);



SELECT *
FROM EmployeeDemographics

/* The INSERT INTO statement is used to insert new records in a table
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...), (value1,value2, value 3,...;
Or  
INSERT INTO MyTable VALUES ("John", 123, "Lloyds Office");
INSERT INTO MyTable VALUES ("Jane", 124, "Lloyds Office");
INSERT INTO MyTable VALUES ("Billy", 125, "London Office");
INSERT INTO MyTable VALUES ("Miranda", 126, "Bristol Office"); */

INSERT INTO EmployeeDemographics
(EmployeeID, FirstName, LastName, Age, Gender)
VALUES( 1001, 'Jenny','Jackson', 25, 'Female' ),
       (1002,  'Kate', 'White', 30,  'Female'),
	   ( 1003, 'Nate', 'Trow', 30,  'Male' ),
	   ( 1004, 'Owen', 'Larry', 40,  'Male' ),
	  ( 1005, 'Jason', 'Owen', 34,  'Male' ),
	    ( 1006, 'James', 'Leo', 30,  'Male' ),
		( 1007, 'Any', 'Jaskson', 36,  'Female' ),
		( 1008, 'July', 'Ng', 37,  'Female' ),
		( 1009, 'David', 'King', 29,  'Male' ),
	   ( 1010, 'Bill', 'Johson', 30,  'Male' );

SELECT *
FROM EmployeeDemographics

/* The CREATE TABLE statement is used to create a new table in a database.
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
); */
-- Create the 2nd Table : EmployeeSalary

CREATE TABLE EmployeeSalary (
    EmployeeID int,
    JobTitle varchar(50),
    Salary int );

SELECT *
FROM EmployeeSalary

INSERT INTO EmployeeSalary
(EmployeeID, JobTitle,Salary)
VALUES( 1001, 'Manager', 6000 ),
       (1002,  'Analyst', 4000),
	   ( 1003, 'Customer service', 3000 ),
	   ( 1004, 'Secretary', 2000 ),
	  ( 1005, 'IT Support', 4500 ),
	    ( 1006, 'Software Engineer', 5500 ),
		( 1007, 'Book keeper', 3000),
		( 1008, 'Senior Analyst', 4500  ),
		( 1009, 'Director', 7500 ),
	   ( 1010, 'Engineer', 5500);

	   SELECT *
	   FROM EmployeeSalary

	   /* SQL Basics 1:  SELECT Statement 
	   SELECT *, TOP 5 *, COUNT( ), DISTINCT, min(  ), max( ), Avg() sum( ) */

	   SELECT  top 5 *
	   FROM EmployeeSalary

	   SELECT DISTINCT Salary
	   FROM EmployeeSalary
	   ORDER BY Salary desc

	   SELECT MIN(Salary) as MinSalary, MAX(Salary) as MaxSalary, AVG(Salary) as AVGSalary
	   FROM EmployeeSalary

	   SELECT  COUNT ( DISTINCT(LastName))
	   FROM EmployeeDemographics

	   SELECT   *
	   FROM EmployeeDemographics

	   SELECT *
	   FROM EmployeeSalary

	   /* SQL BASIC2: WHERE Statement:
	   The WHERE clause is used to filter records.
         It is used to extract only those records that fulfill a specified condition.
		 SELECT column1, column2, ...
          FROM table_name
           WHERE condition;  = , <> ( not equal), >, < , like 'a%'( wildcards) or ' _a' or h(a-c), in( a,b), between a and b , is null, is not null  */

SELECT *
FROM EmployeeSalary
WHERE EmployeeID between 1001 and 1005 

SELECT *
FROM EmployeeSalary
WHERE Salary is not null

SELECT *
FROM EmployeeSalary
WHERE Salary is null

SELECT *
FROM EmployeeSalary
WHERE JobTitle like 'a%' or JobTitle like '%g%'

-- More wildcards

SELECT *
FROM EmployeeSalary
WHERE JobTitle like '_a%'

/* The SQL BETWEEN Operator
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;  */

SELECT *
FROM EmployeeSalary
WHERE EmployeeID  between 1001 and 1007
AND EmployeeID not in (1002, 1004)

/*The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);  */

SELECT *
FROM EmployeeSalary
WHERE EmployeeID in (1001, 1006)


/*  The SUM() function returns the total sum of a numeric column. 

SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;  */

SELECT sum(Salary) as sum
FROM EmployeeSalary
WHERE EmployeeID between 1001 and 1010
AND JobTitle like '%a%'

-- Now learn updating the table values
/* The SQL UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;  */

--Take a look at the table: 
SELECT * 
FROM EmployeeSalary

UPDATE EmployeeSalary
SET Salary = 2500
WHERE EmployeeID= 1004

SELECT * 
FROM EmployeeSalary

--Next lets learn how to delete values from a table
/*  The SQL DELETE Statement
The DELETE statement is used to delete existing records in a table
DELETE FROM table_name WHERE condition;  */

SELECT * 
FROM EmployeeDemographics

-- So much duplicate values!! I need to delete all rows from Column 12. OK I will delete top 90 from this table. Let's try!

DELETE top (90)  
FROM EmployeeDemographics

SELECT * 
FROM EmployeeDemographics

-- Cool!!  :) Good night!




