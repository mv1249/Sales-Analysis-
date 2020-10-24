use sales;



select count(*) from sales.transactions where transactions.currency='INR\r';


select count(*) from transactions where currency = 'INR';

select count(*) from sales.transactions where transactions.currency='USD\r';

select count(*) from sales.transactions where transactions.currency='INR';

select * from sales.transactions where transactions.currency='INR' or transactions.currency='USD';


select * from sales.transactions where transactions.currency='USD\r' or transactions.currency='USD';


select * from transactions inner join date on transactions.order_date = date.date 
where date.year = 2017;

select distinct(year) from sales.date;