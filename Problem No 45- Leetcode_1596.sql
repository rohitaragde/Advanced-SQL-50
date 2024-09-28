------------------------------ Leetcode 1596 ----------------------------------------
------------------ Most Frequently Ordered Products For Each Customer -----------------

create table Customers1050
(customer_id int primary key,
 customer_name varchar(12))

create table Orders1050
(order_id int primary key,
 order_date date,
 customer_id int,
 product_id int)

 create table Products1050
 (product_id int primary key,
  product_name varchar(12),
  price int)

insert into Customers1050 values(1,'Alice')
insert into Customers1050 values(2,'Bob')
insert into Customers1050 values(3,'Tom')
insert into Customers1050 values(4,'Jerry')
insert into Customers1050 values(5,'John')

insert into Orders1050 values(1,'2020-07-31',1,1) 
insert into Orders1050 values(2,'2020-07-30',2,2)
insert into Orders1050 values(3,'2020-08-29',3,3) 
insert into Orders1050 values(4,'2020-07-29',4,1)
insert into Orders1050 values(5,'2020-06-10',1,2)
insert into Orders1050 values(6,'2020-08-01',2,1)
insert into Orders1050 values(7,'2020-08-01',3,3)
insert into Orders1050 values(8,'2020-08-03',1,2)
insert into Orders1050 values(9,'2020-08-07',2,3)
insert into Orders1050 values(10,'2020-07-15',1,2)

insert into Products1050 values(1,'keyboard',120)
insert into Products1050 values(2,'mouse',80)
insert into Products1050 values(3,'screen',600)
insert into Products1050 values(4,'hard disk',450)



/* Write a solution to find the most frequently ordered product(s) for each customer.
The result table should have the product_id and product_name for each customer_id who ordered at least one order.
Return the result table in any order.
*/

select * from Customers1050
select * from Orders1050
select * from Products1050

with CTE as
(
select customer_id as customerid,product_id as productid,
rank() over(partition by customer_id order by count(product_id) desc) as rnk
from Orders1050 group by customer_id,product_id
)

select customerid,productid,p.product_name
from CTE join Products1050 p
on CTE.productid=p.product_id
where rnk=1

Better Approach:-

with cte as
(
select 
o.customer_id as customer_id,
p.product_id as product_id,
p.product_name as product_name,
rank() over(partition by o.customer_id order by count(o.product_id) desc) as rnk
from Products1050 p join Orders1050 o
on p.product_id=o.product_id
group by customer_id,p.product_id,p.product_name
)

select distinct customer_id,product_id,product_name
from cte
where rnk=1

