Channel URL: https://www.youtube.com/@LearnWithRD0529/videos



---------------------------------------------------------------------------------------------------------------------------------------------------------------
Day 15: STRING MGMT FUNCTIONS - SUBSTR, INSTR, REPLACE, LOWER, UPPER AND MIN, MAX, AVG FUNC IN SQL
Video URL: https://www.youtube.com/watch?v=Xi2A_VqX3jg&ab_channel=LearnwithRD
---------------------------------------------------------------------------------------------------------------------------------------------------------------
scripts -
-----------------
CREATE TABLE Account (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    account_name VARCHAR(255),
    balance DECIMAL(10, 2),
    account_type VARCHAR(50)
);

-- Inserting sample account data
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(1, 'ACC123456', 'John Doe', 1000.00, 'Savings');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(2, 'ACC789012', 'Jane Smith', 2500.50, 'Checking');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(3, 'ACC345678', 'Bob Johnson', 500.75, 'Savings');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(4, 'ACC901234', 'Alice Brown', 3500.25, 'Checking');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(5, 'ACC567890', 'Eve Wilson', 200.00, 'Savings');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(6, 'ACC123123', 'Charlie Davis', 1800.60, 'Checking');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(7, 'ACC456456', 'Grace Lee', 3000.75, 'Savings');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(8, 'ACC789789', 'David White', 150.25, 'Checking');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(9, 'ACC987654', 'Sarah Johnson', 900.00, 'Savings');
INSERT INTO Account (account_id, account_number, account_name, balance, account_type)
VALUES(10, 'ACC321321', 'Michael Smith', 4500.50, 'Checking');

------------------------------------------------------------------------------

select * from account;

-- Aggregate Functions
select min(balance) from account;
select max(balance) from account;
select avg(balance) from account;

select * from account order by balance; -- will order in accending order

select min(balance) as min_bal, max(balance) as max_bal, avg(balance) as avg_bal from account;

select min(balance) as min_bal, max(balance) as max_bal, avg(balance) as avg_bal from account group by account_type;

-- String Functions

select upper(account_name)from account; -- will display mentioned pivot in upper case
select *, upper(account_name)from account; -- will add another pivot with strings in upper case

select lower(account_name)from account; -- will display mentioned pivot in lower case
select *, lower(account_name)from account; -- will add another pivot with strings in lower case

select length(account_name)from account; -- will calculate character length for mentioned pivot
select *, length(account_name)from account; -- will add another pivote to calculate character length for mentioned pivot


select lower ("this is just a TEST") from dual; -- will convert the strings into lower case supplied in bracket
select upper ("this is just a TEST") from dual; -- will convert the strings into upper case supplied in bracket

select replace (account_name, ' ', '-') from account; -- will replace ' ' with '-' for all the records under account_name
select *, replace (account_name, ' ', '&') from account; -- will add another pivot and will replace ' ' with '-' for all the records under account_name
select *, replace(account_name, 'J', 'S') from account where account_name in ('John Doe', 'Jane Smith');

select substr(account_name, 1, 4) from account; -- will extract substrings from mentioned pivot and will start with 1st character and will go upto 4th character
select *, substr(account_name, 1, 4) from account; -- will add another pivot and will extract substrings from mentioned pivot
select substr(account_name, 1, 6) from account;
select *, substr(account_name, 2, 6) from account;
select *, substr(account_name, -0, 4) from account; -- substr (string_value, string_position, no_of_characters)
select *, substr(account_name, -4, 4) from account;
select *, substr(account_name, -4, 5 ) from account;

select account_name, LOCATE(account_name,' ', 1,1) from account; -- LOCATE used to find the position of character

SELECT *, LOCATE(' ', account_name) AS position_of_space FROM account; -- LOCATE used to find the position of character
SELECT account_name, LOCATE(' ', account_name) AS position_of_space FROM account;
SELECT account_name, LOCATE(' ', account_name, 1) AS position_of_space FROM account;
SELECT account_name, LOCATE('D', account_name, 1) AS position_of_space FROM account;

## Display surname of customer 
select substr(account_name, locate(' ',account_name)+1) as surname from account;
---------------------------------------------------------------------------------------------------------------------------------------------------------------


