SELECT *
FROM EmployeeDemographics

--Add a few more rows with some null values

INSERT into EmployeeDemographics( EmployeeID, FirstName, LastName, Age, Gender)

VALUES(1011, 'Brian', 'Bin', NULL, 'Male'),
       (NULL, 'Naomi', 'Mike', 35, 'Female'),
	   (1013,  'Joy', 'Pan',  NULL, 'Female');

	   SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

--Update values of the table or alter
UPDATE EmployeeSalary

SET JobTitle =Null 
WHERE EmployeeID = 1010

   SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

--Now lets learn join statement: 
/* SQL JOIN
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
Here are the different types of the JOINs in SQL:

(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table  */

--Ok lets try to join the two tables with inner/left/right/Full outer join clause:

SELECT * From EmployeeDemographics AS A
INNER JOIN EmployeeSalary AS B
ON  A.EmployeeID= B.EmployeeID

--Good with INNER JOIN. Now lets try LEFT/RIGHT/FULL OUTER join:

SELECT * From EmployeeDemographics AS A
LEFT OUTER  JOIN EmployeeSalary AS B
ON  A.EmployeeID= B.EmployeeID

SELECT * From EmployeeDemographics AS A
RIGHT OUTER  JOIN EmployeeSalary AS B
ON  A.EmployeeID= B.EmployeeID

SELECT * From EmployeeDemographics AS A
RIGHT JOIN EmployeeSalary AS B
ON  A.EmployeeID= B.EmployeeID

---=Full OUTER join
SELECT * From EmployeeDemographics AS A
FULL OUTER  JOIN EmployeeSalary AS B
ON  A.EmployeeID= B.EmployeeID

--OK..See you later!