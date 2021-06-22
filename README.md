__1. SQL-Basics_1:__ create table, insert into, SELECT * FROM table_name, SELECT TOP 5*, SELECT DISTINCT, aggregating with count(), min(), max(), avg(), sum()

__2. SQL Basics_2:__  WHERE Statement:\
	       The WHERE clause is used to filter records.\
         It is used to extract only those records that fulfill a specified condition.\
		       __*Syntax*__: SELECT column1, column2, ...\
                       FROM table_name\
                      WHERE condition; \
          Operators in The WHERE Clause:   = , <> ( not equal), >, < , like 'a%'( wildcards) or ' _a' or h(a-c), in( a,b), between a and b , is null, is not null
	  
__**3. SQL-Basics_3:__\
\**SQL JOIN**_\
__A JOIN clause__ is used to combine rows from two or more tables, based on a related column between them.\
__Here are the different types of the JOINs in SQL:\
__1.(INNER) JOIN:__ Returns records that have matching values in both tables\
__2.LEFT (OUTER) JOIN:__ Returns all records from the left table, and the matched records from the right table\
__3.RIGHT (OUTER) JOIN:__ Returns all records from the right table, and the matched records from the left table\
__4.FULL (OUTER) JOIN:__ Returns all records when there is a match in either left or right table 
