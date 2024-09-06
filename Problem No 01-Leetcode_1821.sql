-----------------------------Leetcode 1821 --------------------------------------------
----------------- Find Customers with Positive Revenue This Year ------------------------

create table Cust
(customer_id int,
 yyear int,
 revenue int,
 primary key(customer_id,yyear));

insert into Cust values(1,2018,50);
insert into Cust values(1,2021,30);
insert into Cust values(1,2020,70);
insert into Cust values(2,2021,-50);
insert into Cust values(3,2018,10);
insert into Cust values(3,2016,50);
insert into Cust values(4,2021,20);

select * from cust;

/* Write a solution to report the customers with positive revenue in the year 2021
Return the result in any order */

select customer_id from cust 
where yyear=2021 and revenue>0
order by customer_id








