>> show tables;
# to check available tables in current db

>> describe emp;
# to verify your table was created the way you expected

>> create table emp (name VARCHAR(20), manager VARCHAR(20),
       department VARCHAR(20), sex CHAR(1), date_of_birth date);
 # to create table 
 
 >> load data local infile '"path\file.txt"' into table table_name lines terminated by '\r\n';
 >> load data local infile '"C:\Users\PRAKASH\Downloads\emp.csv"' into table emp lines terminated by '\r\n';
 # to load data through csv/txt file into the table.
 
 >> select * from table_name;
 ## to see all data inside the table
 
 >> insert into emp values (1261, "Prakash", 10/12/2020, 29, "Asus");
 ## # insert data into the table
 
>> select max(coulumn_name) as column_as from table_name;
## fetch the max value from a column

eg: select min(sales) as sale from superstore;


>> select min(coulumn_name) as column_as from table_name;
## fetch the min value from a column

eg: select min(sales) as sale from superstore;


>> select Category, max(profit) as price
from superstore
group by Category
order by Category;

## Maximum of column per group


select State, min(profit) as price
from superstore
group by State
order by State;

## Minimum of column per group


