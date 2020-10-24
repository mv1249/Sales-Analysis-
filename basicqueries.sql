use sales;

select * from sales.customers;

select * from sales.transactions;


/* total count of the records in the transactions table*/

select count(*) from sales.transactions;


/* total count of the records in the customer table */

select count(*) from sales.customers;


/* show the transactions only from chennai,the market code is 'Mark_001' */

select * from sales.transactions where market_code='Mark001';

/* count of the tranasctions only made in chennai ,the result must be 1035*/

select count(*) from sales.transactions where market_code='Mark001'; 

/* if the manager asks the dump of all the records of chennai,just run the select
command and export that file in form of .csv format*/

/* find the records which have currency as 'USD',query is ↓*/

select * from sales.transactions where currency='USD';

/*Get the records from the 2020 year,so for that we have a date table,we need to 
perform inner join to the transactions and the date table as in the transctions table there 
is no `year` column,but in date we have,so need to perform the inner join in that */

select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on
sales.transactions.order_date = sales.date.date;

/* after getting the joined result,you can get the result for the year 2020*/

select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on
sales.transactions.order_date = sales.date.date where sales.date.year = 2020;

/*Total sales_ammount from the year 2020 */

select sum(sales.transactions.sales_amount) from sales.transactions inner join
sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020 and 
transactions.currency = 'INR\r' or transactions.currency = 'USD\r';

/*total sales_ammount in the chennai region during 2020*/

select sum(sales.transactions.sales_amount) from sales.transactions inner join
sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020
and transactions.market_code = 'Mark001';

/* Distinct products which you sold in chennai */

select distinct product_code from sales.transactions where sales.transactions.market_code='Mark001';


use sales;

select * from sales.transactions;

select * from sales.transactions where sales_amount=-1;