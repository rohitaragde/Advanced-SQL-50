------------------------------ Leetcode 1398 --------------------------------------------

------------ Customers Who Bought Products A and B but Not C -------------------------------

create table Customers
(customer_id int primary key,
 customer_name varchar(10))

 create table Orders
 (order_id int primary key,
  customer_id int,
  product_name varchar(10),
  foreign key(customer_id) references Customers(customer_id))

insert into Customers values(1,'Daniel')
insert into Customers values(2,'Diana')
insert into Customers values(3,'Elizabeth')
insert into Customers values(4,'Jhon')

select * from Customers 

insert into Orders values(10,1,'A')
insert into Orders values(20,1,'B')
insert into Orders values(30,1,'D')
insert into Orders values(40,1,'C')
insert into Orders values(50,2,'A')
insert into Orders values(60,3,'A')
insert into Orders values(70,3,'B')
insert into Orders values(80,3,'D')
insert into Orders values(90,4,'C')


select * from Customers 

select * from Orders

/*Write a solution to report the customer_id and customer_name of 
customers who bought products "A", "B" but did not buy the product "C" 
since we want to recommend them to purchase this product.
 Return the result table ordered by customer_id.
 The result format is in the following example.*/

select * from Customers 

select * from Orders

select c.customer_id,c.customer_name
from Customers c left join Orders o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
having
sum(case when o.product_name='A' then 1 else 0 end)>0 and
sum(case when o.product_name='B' then 1 else 0 end)>0 and
sum(case when o.product_name='C' then 1 else 0 end)=0
order by c.customer_id 













