-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- Where Clause Syntax with operators (13/Aug/2023)
-- Video URL: https://www.youtube.com/watch?v=GO6oecL74AQ&ab_channel=HouseofConcepts
-- Resources URL: https://houseoftechconcepts.com/pages/sqlCourseStudyMaterial.html
-- Dataset URL: https://docs.google.com/document/d/1ISBCfNKbQvbhUWg5nKgQKQvGCQ_Dv_4Fe2QTQvGa4yY/edit  (customer)

select * from customer;

-- greater then 30
select * from customer 
where age > 30;

-- greater then eaqul to 30
select * from customer 
where age >= 30;

-- less then eaqul to 30
select * from customer 
where age <= 30;

-- less then 30
select * from customer 
where age < 30;

-- equls to 30
select * from customer 
where age = 30;

-- not equls to 30 (<> or != )
select * from customer
where age <> 30;

select * from customer
where city <> 'New Delhi';

select * from customer
where age != 30;

-- BETWEEN operator (when we use and it will return inclusing range)
select * from customer
where age between 30 and 40;

-- LIKE operator
select * from customer
where city like '%new%';

select * from customer
where email like 'r%';

select * from customer
where email like '%.com';

-- IN operator
select * from customer
where city in ('Pune','Jaipur','Bangalore');

-- NOT IN operator
select * from customer
where city not in ('Pune','Jaipur','Bangalore');

-- AND operator
select * from customer
where city not in ('Pune','Jaipur','Bangalore')
and age >= 30;


 -- OR operator
select * from customer
where email like 'r%' 
or email like 'n%';

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
URL Link: https://www.youtube.com/watch?v=RURGLw8iu0Y&ab_channel=HouseofConcepts
DATA ANALYSIS in MySQL 🔥🔥 (Using Pivoting and Use Cases) ((1/Oct/2023))
Dataset: https://houseoftechconcepts.com/pages/mySqlStudyMaterial.html




-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- RANK Window Function in MySQL (INTERVIEW QUESTIONS) (7/Oct/2023)
-- Video URL: https://www.youtube.com/watch?v=DGO5EXhDQzI&ab_channel=HouseofConcepts
-- Resources URL: https://houseoftechconcepts.com/pages/mySqlStudyMaterial.html
-- Dataset URL: https://docs.google.com/spreadsheets/d/1qtsmYwcKpBbHeuNnI_xkYkjWDgFeUPBl-DM_yqV9dfI/edit#gid=0
              : https://docs.google.com/document/d/1Le8eOJc0DQ4ggpfmWqVfAjYewt3GD35r2xNIYwFE9CA/edit  

# ROW_NUMBER() Window Function
### Key Pointers
-- Assign s unique sequential number to rows within a result set [within a specific partition]
-- In case if there is a tie among rows, it ignores the same and assign the diffrent row numbers to each row.
-- Important use cases - Removing the duplicates

syntax:
select *, row_number() over() from table_name;

eg:
> select *, row_number() over(order by investment_year desc ) from finance_data;
> select *, row_number() over(order by investment_amount desc ) from Finance_data;


--> Identify the max investment (Basic Scenario - used sub-queries)
> select * from (
select *, row_number() over(order by investment_amount desc ) as row_num from Finance_data) as max_invest
where row_num =1;

# How to Duplicate a Table in MySQL
## Note also that new_table inherits ONLY the basic column definitions, null settings and default values of the original_table. 
It does not inherit indexes and auto_increment definitions.
> CREATE TABLE new_table AS SELECT * FROM original_table;

# To inherit all table definitions,
> CREATE TABLE new_table LIKE original_table;

--> Remove duplicates using row_number() (Advanced Scenario - used sub-queries)
-- First create a dummy table with dupliates
>  delete from duplicate where customer_id in 
(select dupl_row.customer_id from (
select *, row_number() over(partition by customer_id, first_name, last_name, email, address_id order by customer_id) as row_num
from duplicate) as dupl_row 
where dupl_row.row_num > 1);

>> delete from demos.customer where id in (
select dup_rem.id from (
select *, row_number() over(partition by c.customer_name, c.customer_age, c.customer_location, c.customer_phonenumber order by c.id) as row_num
from demos.customer c 
) as dup_rem 
where dup_rem.row_num > 1);


-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- RANK Window Function in MySQL (INTERVIEW QUESTIONS) (15/Oct/2023)
-- Video URL: https://www.youtube.com/watch?v=3MB0WiILM4g&ab_channel=HouseofConcepts
-- Resources URL: https://houseoftechconcepts.com/pages/mySqlStudyMaterial.html
-- Dataset URL: https://docs.google.com/spreadsheets/d/1b11JjIAfHyzbC1egmwzLE4uqzk9Fq48_n_dhYiq0SZA/edit#gid=0
              : https://docs.google.com/document/d/1DtrISTSaibrxyBO2wR4l76l0fFUmEIkGvi26Cpye0CA/edit 

# RANK() Window Function in MySQL
### Key Pointers
-- Assigns sequential rank to each row within a result set based on values of columns.
-- Assign rank based on ORDER BY clause.
-- Very useful when we want to identify tied values
-- Rank assignment -> It alwasys assign ranks in Non consecutive manner
1 -> 2 -> 2 -> 4 -> 5

syntax:
select * rank() over() from table_name;

eg: 
SELECT * RANK() OVER (ORDER BY score DESC) AS rank FROM exam_results;   -- Assign rank based on ORDER BY clause.


## Note: if we dont give argument in OVER() clause all records will be coming as rank 1.

select *, rank() over (order by revenue desc) from sales;   --syntax with valid argument

--> Find the second highest revenue from sales table using rank (we are using sub query method)
select * from (
select *, rank() over(order by revenue desc) as rnk from sales) as highrank 
where highrank.rnk=4;

--> Identify top sales representative by region who generates most revenues (Advanced Scenario)
> select region, Sales_Representative, sum(revenue), rank() over (partition by region order by sum(revenue)) 
region_revenue_rank from sales group by region, Sales_Representative;

--> Identify top products by region which generates most revenues (Advanced Scenario)
> select region, product, sum(revenue), rank() over (partition by region order by sum(revenue)) 
region_revenue_rank from sales group by region, product;

--> Identify top sales representative by region who sold most quantities (Advanced Scenario)
> select region, Sales_Representative, sum(quantity_sold), rank() over(partition by region order by sum(quantity_sold) desc)
region_quantity_sold_rank from sales group by region,Sales_Representative; 

--> Identify top sales products by region which sold most quantities (Advanced Scenario)
> select region, product, sum(quantity_sold), rank() over(partition by region order by sum(quantity_sold) desc)
product_quantity_sold_rank from sales group by region, product;

> select product, region, sum(quantity_sold), rank() over(partition by product order by sum(quantity_sold) desc)
product_quantity_sold_rank from sales group by product, region;

> select product, region, sum(quantity_sold) as total_item_sold, rank() over(partition by product order by sum(quantity_sold) desc)
product_quantity_sold_rank from sales group by product, region;


--> find top seller from each region
> select * from 
(select region, Sales_Representative, sum(quantity_sold), rank() over(partition by region order by sum(quantity_sold) desc) as rnk
 from sales group by region,Sales_Representative) best_seller
where best_seller.rnk =1; 

--> find top product from each region
> select * from 
(select region, product, sum(quantity_sold), rank() over(partition by region order by sum(quantity_sold) desc) as rnk
 from sales group by region,product) best_product
where best_product.rnk =1; 

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------




