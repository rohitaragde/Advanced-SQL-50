----------------------- Leetcode 586 --------------------------------------
------------- Customer Placing the Largest Number of Orders----------

create table orders365
(order_number int primary key,
 cust_number int)

 insert into orders365 values(1,1)
 insert into orders365 values(2,2)
 insert into orders365 values(3,3)
 insert into orders365 values(4,3)

 /*
 Write a solution to find the customer_number
 for the customer who has placed the largest number of orders.
The test cases are generated so that exactly one customer 
will have placed more orders than any other customer.
*/

 select * from orders365

 select top 1 cust_number from orders365
 group by cust_number
 order by count(cust_number) desc



