SELECT *
From EmployeeSalary

/* aggregating with count(), min(), max(), avg(), sum() */

SELECT count(JobTitle) as count
From EmployeeSalary

SELECT min(Salary) as min
From EmployeeSalary


SELECT avg(Salary) as Avg
From EmployeeSalary

SELECT max(Salary) as Max
From EmployeeSalary

SELECT sum(Salary) as Sum
From EmployeeSalary

SELECT JobTitle , Salary
From EmployeeSalary
WHERE Salary IN (4000, 6000)

SELECT JobTitle, min(Salary) as Min
From EmployeeSalary
GROUP BY JobTitle
Having min(Salary)< 3000


SELECT JobTitle, min(Salary) as Min
From EmployeeSalary
GROUP BY JobTitle
ORDER BY JobTitle


SELECT count(*)
FROM EmployeeSalary
WHERE  Salary > 4500

SELECT sum(Salary)
FROM  EmployeeSalary
WHERE Salary > 4500

