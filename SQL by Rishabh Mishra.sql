Video Playlist URL: https://www.youtube.com/watch?v=yH1zCq-iaeU&list=PLdOKnrf8EcP17p05q13WXbHO5Z_JfXNpw&ab_channel=RishabhMishra
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------
Video 1: What Is SQL ? | Database in SQL | SQL Introduction  | SQL Tutorial in Hindi 1

What is SQL?
SQL is a programming language used to intract with Database.

Why SQL is used?
Its used for CRUD
C - Create
R - Read
U - Update
D - Delete

What is database?
Its a system that allow users to store and organise data.

Why database is used?
Its use to store, manupulate, or to access the data.

---------------------------------------------------------------------------------------------------------------------------------
Video 2: Data Types, Primary-Foreign Keys & Constraints in SQL | SQL Tutorial in Hindi 2

Data Types:
- Data type of a column defines what type of value the column can store in the table.
- Its defined while creating tables in database.
- Data types mainly classified into three categories + most used -
  > String: char, varchar, etc
  > Numeric: int, float, bool, etc
  > Date & Time: date, datetime, etc

Commonly used data types in SQL:
 > int: used for integer values
 > float: used to specify a decimal point number
 > bool: used to specify boolean values true and false
 > char: fixed length string that can contain numbers, letters, and special characters
 > varchar: variable length string that can contain numbers, letters, and special characters 
 > date: date formate YYYY-MM-DD
 > datetime: date and time combination, formate is YYYY-MM-DD hh:mm:ss

Primary Key:
> It is a unique column we set in a table to easily identify and locate data in queries
> A table can have only one primary key which should be unique and Not Null.

Foreign Key:
> It is  a column used to link two or more tables together.
> A table can have any number of foreign keys, can contains duplicates and not null values.


Constraints:
> It is Use to specify rules for data in a table
> This ensures the accuracy and reliability of the data in the table 
> Constraints can be specified when the table is created with the CREATE TABLE statement, or
> After the table is created with the ALTER TABLE statement

Syntax:
Create table table_name (
column1 datatype constraint,
column2 datatype constraint,
column3 datatype constraint,
.....
);

Commonly used Constraints in SQL:
> NOT NULL: Ensures that a column can not have a NULL value
> UNIQUE: Ensures that all values in a column are unique
> Primary Key: A combination of a NOT NULL and UNIQUE
> Foreign Key: Privent actions that would destroy links between tables (use to link multiple table together)
> CHECK: Ensures that the values in a column satisfies a specific condition
> DEFAULT: Sets a default value for a column if no value is specified
> CREATE INDEX: Use to create and retrieve data from the database very quickly 

---------------------------------------------------------------------------------------------------------------------------------
Video 3: Create Table In SQL & Create Database | SQL Tutorial in Hindi 3

Create a database:
> create database testdb;

Create a table:

The create table statement is used to create a new table in a database

Syntax: 
> create table testtb 
(
ID int primary key,
Name varchar(30) Not Null,
Age int Not Null,
City char(25),
Salary int
);

---------------------------------------------------------------------------------------------------------------------------------
Video 4: INSERT UPDATE, DELETE & ALTER Table in SQL With Example | SQL Tutorial in Hindi 4

# INSERT values in Table:

The insert into statement is used to insert new records in a table.

Syntax:
Insert into table_name (column1, column2, column3, ....columnN) values (value1, value2, value3,....valueN);

eg:
Insert into customer (custID, custName, Age, City, Salary) values (1, 'Prakash', 27, 'Bangalore', 560037);

# UPDATE values in Table:
The UPDATE command is used to update existing rows in a table.

Syntax:
UPDATE table_name 
set 'column_name1' = 'value1', 'column_name2' = 'value2'
where 'ID'= 'value';

eg:
UPDATE customer 
set 'CustName' = 'Sam', 'Age' = '29'
where 'CustID'= '79100';


# Delete values from Table:

The DELETE statement is used to delete existing records from a table.

Syntax:
DELETE from table_name where condition;

eg:
DELETE from customer where CustID = 79100;

# ALTER values from Table:

The ALTER TABLE statement is used to add, delete, or modify columns in an existing table

Syntax:
> ALTER Table - ADD Column Syntax
Alter table table_name
Add column column_name;

> ALTER Table - DROP Column Syntax
Alter table table_name
Drop column column_name;

> ALTER Table - Alter/Modify Column Syntax
Alter table table_name
Alter column column_name data_type;


# DROP and Truncate Table:
> The DROP table command deletes a table from in the database.

Syntax:
DROP TABLE table_name;

> The TRUNCATE TABLE command deletes the datainside a table, but not the table itself.

Syntax:
TRUNCATE TABLE table_name;


---------------------------------------------------------------------------------------------------------------------------------
Video 5: SELECT Statement & WHERE Clause with Example | Operators in SQL | SQL Tutorial in Hindi 5

# SELECT Statement:
> The SELECT statement used to select data from a database.

Syntax:
- select * from table_name;     -- to select all columns from the table
- select column_name from table_name;    -- to select particular columns from the table
- select column1, column2 from table_name; 

- select distinct column_name from table_name; -- to select distinct/unique values from particular columns of the table


# WHERE Statement:
> The WHERE clause used to filter records.
> It is used to extract only those records that fulfill a specified condition.

Syntax:
- select column_name from table_name where conditions;

eg: 
select name from classroom where grade = "A";


Queries used:

👉 Customer Table

CREATE TABLE customer
(
CustID int8 PRIMARY KEY,
CustName varchar(50) NOT NULL,
Age int NOT NULL,
City char(50),
Salary numeric );

INSERT INTO customer (CustID, Custhame, Age, City, Salary)
VALUES
(1, ‘sam’, 26, ‘Delhi’, 9008),
(2, ‘Ram’, 19, ‘Bangalore’, 11000),
(3, ‘Pam’, 31, ‘Mumbai’, 6060),
(4, ‘3am’, 42, ‘Pune’, 10000);


👉 Classroom Table

CREATE TABLE classroom (
rollno int8 PRIMARY KEY,
name varchar(50) NOT NULL,
house char(12) NOT NULL,
grade char(1) );

INSERT INTO classroom (rollno, name, house, grade)
VALUES
(1, ‘Sam’, ‘Akash’, ‘B’),
(2, ‘Ram’, ‘Agni’, ‘A’),
(3, ‘Shyam’, ‘Jal’, ’B’),
(4, ‘Sundar’, ‘Agni’, ’A’),
(5, ‘Ram’, ‘Yayu’, ‘B’);

# Operators in SQL 
> The SQL reserved words & characters are called operators which are used with WHERE clause in a SQL query.

- Most used operators
1. Arithmetic Operators: Used for arithmetic operations on numeric values
eg - Addition(+), Substraction(-), Multiplication(*), Division(/),Modulas(%)

2. Comperision Operators: Used to compare two different data of SQL table.
eg - Equal(=), Not Equal(!=), Greater Then(>), Greater Then Equals To (=>)

3. Logical Operators: Used to perform boolean operations
eg - ALL, IN, BETWEEN, LIKE, AND, OR, NOT, ANY

4. Bitwise Operators: Used to perform the bit operations on the integer values
eg - Bitwise AND (&), Bitwise OR(|)


# LIMIT Clause:
> The LIMIT clause is used to set and upper limit on the number of tuples returned by SQL query.
eg - select column_name from table_name limit 5; -- will limit the query result to 5 records

# ORDER BY Clause:
The ORDER BY is used to sort the result in ascending (ASC) or descending (DESC) order 
eg - select column_name from table_name order by column_name ASC; 
eg - select column_name from table_name order by column_name DESC;

---------------------------------------------------------------------------------------------------------------------------------
Video 6: How To Import Excel File (CSV) to SQL | Import Data From File | SQL Tutorial in Hindi 6
## Not so important this video can be skiped

---------------------------------------------------------------------------------------------------------------------------------
Video 7: String Functions in SQL | Functions in SQL | SQL Tutorial in Hindi 7

# Functions in SQL:
> The functions in SQL are the database objects that contains a set of SQL statements to perform a specific task. 
A function accepts input parameters, perform actions and then return the result.

> Types of Functions:
1. System Defined Functions: These are the built-in functions.
eg - rand(), round(), upper(), lower(), count(), sum(), max(), etc.

2. User Defined Functions: Once you define a function it can call it in the same way as the built-in functions.

# The Most used string functions:
> The string functions are used to perform an operation on input string and return and output string.
- UPPER(): converts the value of a field to uppercase.
- LOWER(): converts the value of a field to lowercase.
- LENGTH(): return the length of the value in a text field.
- SUBSTRING(): extracts a substring from a string.
- NOW(): returns the current system data & time.
- FORMAT(): used to set the format of a field.
- CONCAT(): add two or more strings together.
- REPLACE(): replaces all occurences of a substring within the a string, with a new substring.
- TRIM(): removes leading and trailing spaces (or other specified characters) from a string.

Dataset URL: 
https://drive.google.com/file/d/1tHtBOdb4Rdx5IC7ftzuXgrgMGPihkpzL/view (payment.csv)
https://drive.google.com/file/d/1_KcS9eSw3uMITC2lyfqqd26yongFDM8P/view (customer.csv)
https://www.postgresql.org/docs/9.1/functions-string.html (String Functions and Operators)

> select upper (first_name) from customer;
> select upper (first_name), first_name from customer;

> select lower (first_name) from customer;
> select lower (first_name), first_name from customer;

> select length (first_name) from customer;
> select length (first_name), first_name  from customer;

> select substring (first_name, 1, 3)  from customer;
> select substring (first_name, 1, 3), first_name  from customer;
> select substring (first_name, 2, 4), first_name  from customer;

> select concat(first_name,last_name) from customer;
> select concat(first_name,last_name), first_name, last_name from customer;


> SELECT TRIM(' ' FROM '   Hello, World   '); -- Output: 'Hello, World'  -- Remove spaces from both ends of the string
> SELECT TRIM(LEADING 'a' FROM 'aabbacat'); -- Output: 'bbacat'          -- Remove 'a' from the beginning of the string
> SELECT TRIM(TRAILING 'z' FROM 'pizzaazzz'); -- Output: 'pizzaa'        -- Remove 'z' from the end of the string

---------------------------------------------------------------------------------------------------------------------------------
Video 8: Aggregate Functions in SQL - COUNT, SUM, AVG, MAX, MIN | SQL Tutorial in Hindi 8

# Aggregate Functions:
> The aggregate functions performs a calculation on multiple values and returns a single value.
> Aggregate functions are often used with GROUP BY and SELECT statement

# The Most used aggregate functions:
- COUNT(): returns number of values
- SUM(): returns sum of values
- AVG(): returns average of values
- MAX(): returns maximum value
- MIN(): returns minimum value
- ROUND(): rounds a number to a specified number of decimal places

Syntax with eg:
> select count(*) from payments;
> select count(amount) from payments;

> select sum(amount) from payments;

> select avg(amount) from payments;

> select max(amount) from payments;

> select min(amount) from payments;

> select round(avg(amount),2) from payments;

---------------------------------------------------------------------------------------------------------------------------------
Video 9: Group By and Having Clause in SQL | SQL Tutorial in Hindi 9

# GROUP BY Statement
> The GROUP BY statement group rows that have same values into summery rows.
> It is often used with aggregate functions(count(), sum(), avg(), min(), max()) to group the result-set by one or more columns.

Syntax:
select column_name from table_name group by column_name;

eg:
select mode, sum(amount) as total from payment group by mode.

select mode, sum(amount) as total from payment group by mode order by total asc;

# HAVING Clause:
> The HAVING clause is used to apply a filter on the result of GROUP BY based on the specified conditions.
> The WHERE clause places conditions on the selected columns, where the HAVING clause places conditions on the group created by the GROUP BY clause.

Syntax:
select column_name(s) from table_name where condition(s) group by column_name(s) having condition(s);

eg:
select mode, count(amount) 
as total from payment
group by mode
having count (amount) > = 3
order by total desc;

select mode, count(amount) 
as total from payment
group by mode
having count (amount) > = 2 and count (amount) < 4  
order by total desc;

- Order of execution
SELECT(columns/everything) FROM(Table name)
WHERE(Apply condition)
GROUP BY(Columns name you want to group) AS (Column header name)
HAVING(apply condition) [For more condition use OPERATORS]
ORDER BY (Column header name with ASC/DESC)
LIMIT(Count of rows you want)

The correct order of exection is:
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT

The difference between the having and where clause in SQL is that the where clause cannot be used with aggregates function, but the having clause can

---------------------------------------------------------------------------------------------------------------------------------
Video 10: TimeStamp and Extract Function | Date Time Function | SQL Tutorial in Hindi 10

# TIMESTAMP:
> The TIMESTAMP data type is used for values that contain both date and time parts

- TIME: contains only time, format - HH:MM:SS
- DATE: contains only date, format - YYYY-MM-DD
- YEAR: contains only yeat, format - YYYY or YY
- TIMESTAMP: contains date and time, format - YYYY-MM-DD HH:MM:SS
- TIMESTAMPTZ: contains date, time and time zone

# TIMESTAMP Functions / Operators:

- show timezone       - not working
- select timeofday()  - not working
- select now()        - worked
- select current_time - worked
- select current_date - worked

# EXTRACT Functions:
> The EXTRACT Functions etracts a part from a given date value.

Syntax:
select extract (month from date_field) from table_name;

- YEAR
- QUATER
- MONTH
- WEEK
- DAY
- HOUR
- MINUTE
- DOW  (Day of Week)
- DOY  (Day of Year)

Dataset Used: 👉 payment csv file: https://bit.ly/41kIYjW

eg:
select extract (month from payment_date) as payment_month from payment;
select extract (month from payment_date) as payment_month, payment_date from payment;

select extract (year from payment_date) as payment_year from payment;
select extract (year from payment_date) as payment_year, payment_date from payment;

select extract (dow from payment_date) as payment_dow from payment;
select extract (dow from payment_date) as payment_dow, payment_date from payment;

select extract (date from payment_date) as payment_date from payment;
select extract (date from payment_date) as payment_date, payment_date from payment;

select extract (quarter from payment_date) as payment_quarter from payment;
select extract (quarter from payment_date) as payment_quarter, payment_date from payment;


---------------------------------------------------------------------------------------------------------------------------------
Video 11: Complete SQL JOINS For Beginners | SQL JOIN Queries with Examples | SQL Tutorial in Hindi 11

# SQL JOIN:
> A JOIN clause is used to combine data from two or more tables, based on a related column between them.

Types of JOINS:
> INNER JOIN
> LEFT JOIN also called as Left Outer Join
> RIGHT JOIN also called as Right Outer Join
> Full JOIN also called as Full Outer Join

# INNER JOIN: 
> Returns records that have matching values in both tables.

Syntax:
select from coulumn_name from table_nameA INNER JOIN table_nameB on table_nameA.column_name = table_nameB.column_name

eg:
select * from customer as c inner join payment as p on c.customer_id = p.customer_id;

# LEFT JOIN:
> Returns all records from the left table, and matched records from the right table.

Syntax:
select from coulumn_name from table_nameA LEFT JOIN table_nameB on table_nameA.column_name = table_nameB.column_name

eg:
select * from customer as c left join payment as p on c.customer_id = p.customer_id;

# RIGHT JOIN:
> Returns all the records from the right table and matched records from the left table.

Syntax:
select from coulumn_name from table_nameA RIGHT JOIN table_nameB on table_nameA.column_name = table_nameB.column_name

eg:
select * from customer as c right join payment as p on c.customer_id = p.customer_id;


# Full JOIN:
> Returns all records when there is a match in either left or right table.

## We do not have a full join or full outer join in MySQL. But instead, we will emulate them using a combination of LEFT and RIGHT JOINS and the UNION query.

Syntax:
select from coulumn_name from table_nameA FULL OUTER JOIN table_nameB on table_nameA.column_name = table_nameB.column_name     -- not applicable in MySQL

SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id
UNION
SELECT * FROM t1 RIGHT JOIN t2 ON t1.id = t2.id

eg:
select * from customer as c full outer join payment as p on c.customer_id = p.customer_id;

SELECT * FROM Students s LEFT JOIN Marks m ON s.Id = m.StudentID
UNION
SELECT * FROM Students s RIGHT JOIN Marks m ON s.Id = m.StudentID
WHERE s.Id IS NULL;

---------------------------------------------------------------------------------------------------------------------------------
Video 12: SQL SELF JOIN | UNION & UNION ALL in SQL | SQL Tutorial in Hindi 12

# SELF JOIN: 
> a SELF JOIN is a regular joinin which a table is joined to itself.
> SELF JOINs are powerful for comparing values in a column of rows with the same table.

Syntax:
select column_name from table_nameA as t1 join table_nameA as t2 on t1.column_name = t2.column_name;

eg:
select t1.empname as employee_name, t2.empname as manger_name from emp as t1 
JOIN
emp as t2 on t2.empid = t1.manager_id;


# UNION: 
> The sql UNION clause/operator is used to combine/concatinate the results of two or more select statements without returning any duplicate rows and keep unique records.

To use this UNION clause, each SELECT statement must have 
- The same number of columns selected and expressions 
- The same data type and 
- Have them in the same order

## UNION only returns unique set of records from the tables.

Syntax:
select column_name from table_nameA
UNION
select column_name from table_nameB;

eg:
select cust_name,cust_amount from custA
UNION
select cust_name,cust_amount from custB;

# UNION ALL: 
> In UNION ALL everything is same as UNION, it combines/concatinate two or more table but keeps all records including duplicates.

Syntax:
select column_name from table_nameA
UNION ALL
select column_name from table_nameB;

eg:
select cust_name,cust_amount from custA
UNION ALL
select cust_name,cust_amount from custB;

---------------------------------------------------------------------------------------------------------------------------------
Video 13: Complete SQL Subquery Using Comparison and Logical Operators | SQL Tutorial in Hindi 13

# SUB QUERY:
> A Subquery or inner query or a nested query allows us to create complex query on the output of another query.
> A Subquery syntax involves two SELECT statements.

Syntax:
select column_name from table_name where column_name operator;
> select column_name from table_name where column_name operator;

eg:
select * from payment where amount > (select avg(amount) from payment);

select customer_id, amount, mode from payment where customer_id IN (select customer_id from customer);

select first_name, last_name  from customer as c
where exists ( select customer_id, amount from payment as p where p.customer_id = c.customer_id and amount > 100);


---------------------------------------------------------------------------------------------------------------------------------
Video 14: SQL Window Function with Example- RANK, DENSE RANK, ROW NUMBER, LEAD/LAG | SQL Tutorial in Hindi 14

# WINDOWS FUNCTIONS: 
> WINDOWS FUNCTIONs applies aggregate, ranking, and analytic functions over a particular window (set of rows).
> And OVER clause is used with window functions to define that window.

Syntax:
select column_name, fun() over([<partition by clause>]
[<order by clause>]
[<row or range clause>])
from table_name;

WINDOW FUNCTION TERMS:

> Window function -- applies aggregate, ranking and analytic functions over a particular window for eg. SUM, AVG, or row_number.
> Expression -- is the name of column that we want the window function operated on. this may not be necessary depending on what window function is used.
> Over --is just to signify that this is a window function.
> Partition By -- divides the rows into partitions so we can specify which rows to use to compute the window function.
> Order By -- is used so that we can order the rows within each partition. this is optional and does not have to be specified.
> Rows -- can be used if we want to further limit the rows within our partition. this is optional and usually not used.

There is no official division of the SQL window functions into the categories but at high level we can divide into three types.
# Types of Window Functions:
>> Aggregate - SUM
             - AVG
             - COUNT
             - MIN
             - MAX
             
>> Ranking   - ROW_NUMBER
             - RANK
             - DENSE_RANK
             - PERCENT_RANK

>> Value/Analytic - LEAD
                  - LAG
                  - FIRST_VALUE
                  - LAST_VALUE


# Aggregate function examples -

select new_id, new_cat, sum(new_id) over(partition by new_cat order by new_id) as "Total",
                        avg(new_id) over(partition by new_cat order by new_id) as "Average",
                        count(new_id) over(partition by new_cat order by new_id) as "Count",
                        min(new_id) over(partition by new_cat order by new_id) as "Minimum",
                        max(new_id) over(partition by new_cat order by new_id) as "Maximum",
from test_data;

== Another Aggregate function examples using rows -

select new_id, new_cat, sum(new_id) over(order by new_id ROW BETWEEN unbounded preceding and unbounded following) as "Total",
                        avg(new_id) over(order by new_id ROW BETWEEN unbounded preceding and unbounded following) as "Average",
                        count(new_id) over(order by new_id ROW BETWEEN unbounded preceding and unbounded following) as "Count",
                        min(new_id) over(order by new_id ROW BETWEEN unbounded preceding and unbounded following) as "Minimum",
                        max(new_id) over(order by new_id ROW BETWEEN unbounded preceding and unbounded following) as "Maximum",
from test_data;

## Note: Above we have used: "ROW BETWEEN unbounded preceding and unbounded following" which will give a single output based on all 
INPUT values/partition (if used).

## Tables USED for above example: 
new_id new_cat
100    Agni
100    Agni
200    Vayu
300    Vayu
500    Vayu
500    Dharti
700    Dharti

Query to create this table-

CREATE TABLE test_data(
   new_id  INTEGER  NOT NULL 
  ,new_cat VARCHAR(6) NOT NULL
);
INSERT INTO test_data(new_id,new_cat) VALUES (100,'Agni');
INSERT INTO test_data(new_id,new_cat) VALUES (100,'Agni');
INSERT INTO test_data(new_id,new_cat) VALUES (200,'Vayu');
INSERT INTO test_data(new_id,new_cat) VALUES (300,'Vayu');
INSERT INTO test_data(new_id,new_cat) VALUES (500,'Vayu');
INSERT INTO test_data(new_id,new_cat) VALUES (500,'Dharti');
INSERT INTO test_data(new_id,new_cat) VALUES (700,'Dharti');

# Ranking function examples -

select new_id,
             ROW_NUMBER() over (order by new_id) as "ROW_NUMBER", 
             RANK() over (order by new_id) as "RANK",
             DENSE_RANK() over (order by new_id) as "DENSE_RANK",
             PERCENT_RANK() over (order by new_id) as "PERCENT_RANK"
from test_data;

# Analytic function examples -

select new_id,
             FIRST_VALUE(new_id) over (order by new_id) as "FIRST_VALUE", 
             LAST_VALUE(new_id) over (order by new_id) as "LAST_VALUE",
             LEAD(new_id) over (order by new_id) as "LEAD",
             LAG(new_id) over (order by new_id) as "LAG"
from test_data;


## Note: If you just want the single last value from whole column, use "ROWS BETWEEN unbounded preceding and unbounded following".

== Quick Assingment: Window Function
---> Offset the LEAD by and LAG values by 2 in the output coloumns
Answer: 

select new_id
             LEAD (new_id, 2) Over(Order by new_id) as "LEAD_by2",
             LAG (new_id, 2) Over(Order by new_id) as "LAG_by2",
from test_data;

---------------------------------------------------------------------------------------------------------------------------------
Video 15: SQL Case Statement/Expression with Examples | WHEN THEN ELSE in sql | SQL Tutorial in Hindi 15

# CASE EXPRESSION:
> The CASE Expression goes through conditions and returns a value when the first condition is met (like if-then-else statement).
  If no conditions are true, it returns the value in the ELSE clause.
> If there is no ELSE part and no conditions are true, then it returns NULL.

Syntax: (This syntax is for general CASE)


CASE
When condition1 then result1
When condition2 then result2
When condition3 then result3
ELSE other_result
END;

eg: (for general CASE)

select customer_id, amount,
CASE
    When amount > 100 the "Expensive Product"
    When amount = 100 the "Moderate Product"
    Else "Inexpensive Product"
END as product_status
from payment;

Syntax: (This syntax is for CASE EXPRESSION)

CASE EXPRESSION
When value1 then result1
When value2 then result2
When valueN then resultN
ELSE other_result
END;


eg: (for CASE EXPRESSION)

select customer_id,
CASE amount
    When 500 then "Prime Customer"
    When 100 then "Plus Customer"
    Else "Regular Customer"
END as customer_status
from payment;

---------------------------------------------------------------------------------------------------------------------------------
Video 16: SQL WITH Clause with examples | SQL CTE (Common Table Expression) | SQL Tutorial in Hindi 16

# COMMON TABLE EXPRESSION (CTE):
> A COMMON TABLE EXPRESSION (CTE) is a temporary named as result set created from a simple SELECT statement that can be used in a subsequent SELECT statement.
> we can define CTE by adding a WITH clause directly before SELECT, INSERT, UPDATE, and DELETE Statements.
> The WITH clause can include one or more CTE's seperated by commas.

Syntax: 

WITH my_cte  as (
     select a,b,c               -- CTE Query
     from table1
)
select a, c from my_cte;        -- Main Query

> The name of this cte is my_cte, and the CTE query is "select a,b,c from table1". The CTE start with the "WITH" Keyword, after which you specify the name of your CTE,
  then the content of the query in the parenthesis. The main query comes after the closing parenthesis and refers to the CTE. 
  Here the main query (also known as the outer query) is "select a, c from my_cte".

eg1: (with One CTE)

WITH my_cte as (
                select * AVG(amount) over (order by p.customer_id) as "Average_Price",
                         COUNT(address_id) over (order by c.customer_id) as "Count",
                From payment as p
                INNER JOIN customer as c
                ON p.customer_id = c.customer_id
                ),
select fisrt_name, last_name, amount from my_cte;


eg2: (With 2 CTE)

WITH my_cp as (
                select * AVG(amount) over (order by p.customer_id) as "Average_Price",
                         COUNT(address_id) over (order by c.customer_id) as "Count",
                From payment as p
                INNER JOIN customer as c
                ON p.customer_id = c.customer_id
                ),
  my_ca as (
            SELECT * from customer as c
            INNER JOIN address as a
            ON a.address_id = c.address_id
            INNER JOIN country as cc
            ON cc.city_id = a.city_id
             )
select cp.fisrt_name, cp.last_name, ca.city, ca.country, cp.amount
from my_ca, as ca, my_cp as cp;

eg(Another One by using payment table):

WITh my_cte as (
                 Select mode, max(amount) as highest_amount, sum(amount) as total_amount
                 from payment
                 group by mode
                )
select payment.*, my.highest_amount, my.total_amount
from payment 
JOIN my_cte my
ON payment.mode  = my.mode
Order by payment.mode

---------------------------------------------------------------------------------------------------------------------------------
Video 17: Recursive CTE | Recursive SQL Queries | SQL Tutorial in Hindi 17

# RECURSIVE COMMON TABLE EXPRESSION (CTE):

> A RECURSIVE CTE references itself. it returns the result subset, then it repeatedly (recursively) references itself, and stops when it returns all the results.
> A RECURSIVE CTE has three elements:
  --> Non-recursive Term: It's a CTE query base definition that forms the base result set of the CTE structure. 
  --> Recursive Term: One or more CTE query definitions joined with non-recursive terms using UNION or UNION ALL operator.
  --> Termination Check: The recursion stops when no rows are returned from the previous iteration.

Syntax:

WITH RECURSIVE cte_name as (
               CTE_query_definition                 -- base query
               UNION ALL
               recursive_query_definition           --recursive query
)
select * from cte_name;


eg:

WITH RECURSIVE my_cte as (
               select 1 as n                 -- base query
               UNION ALL
               select n+1 from my_cte        -- recursive query
               where n < 3)                  -- Termination/condition check
select * from my_cte;

--> Query to create Employee table:

CREATE TABLE employees (
emp_id serial PRIMARY KEY,
emp_name VARCHAR NOT NULL,
manager_id INT )

INSERT INTO employees (
emp_id, emp_name, manager_id)
VALUES
(1, 'Madhav', NULL),
(2, 'Sam', 1),
(3, 'Tom', 2),
(4, 'Arjun', 6),
(5, 'Shiva', 4),
(6, 'Keshav', 1),
(7, 'Damodar', 5);


eg: 
WITH RECURSIVE empCTE as (
               -- anchor query
               select emp_id, emp_name, manager_id
               from employees
               where emp_id = 7
               UNION ALL
               -- Recursive Query
               select employees.emp_id, employees.emp_name, employees.manager_id
               from employees
               JOIN empCTE
               ON employees.emp_id = empCTE.manager_id )
Select * from empCTE;



# Recursive CTE USE Cases:
> Count up until three
> Finding bosses and hierarchical level for all employees
> Finding routes between cities
> Finding Ancestors

## All above notes:
https://github.com/rishabhnmishra/SQL_Tutorial/blob/main/Complete%20SQL%20Tutorial%20In%20Hindi%20By%20Rishabh%20Mishra.pdf

---------------------------------------------------------------------------------------------------------------------------------
SQL Project Video: Data Analyst Portfolio Project - Music Store Data Analysis Project using SQL
Video URL: https://youtu.be/VFIuIjswMKM?list=PLdOKnrf8EcP17p05q13WXbHO5Z_JfXNpw
GitHUB Link: https://github.com/rishabhnmishra/SQL_Music_Store_Analysis






🔖Music Store zip csv files direct link1: https://shorturl.at/sEIUV  
or
🔖Music Store zip csv files link2:  https://shorturl.at/DJMUX

🔖Music Store Database link1: https://bit.ly/3wYyp88 
or
🔖Music Store Database link2: https://bit.ly/3DMXsPt

🔖FULL Project on GitHub- Music Store Analysis: https://bit.ly/3X7wV69 

🔖 Music Store Analysis QUERY (Questions & Answers): https://bit.ly/3HSL574 
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

Most Asked SQL Interview Question - Solved Using 3 Methods
---------------------------------------------------------------------------------------------------------------------------------
Solve SQL Interview Questions for Data Analyst - Product Based Company Job Interview
---------------------------------------------------------------------------------------------------------------------------------

