------------------------------- Leetcode 1511 -------------------------------------
--------------------------- Customer Order Frequency-------------------------

create table Customers1
(customer_id int primary key,
 cust_name varchar(10),
 cust_country varchar(10))

create table Product1
(product_id int primary key,
 description varchar(10),
 price int)


 create table Orders1
 (order_id int primary key,
  customer_id int,
  product_id int,
  order_date date,
  qunatity int,
  foreign key(customer_id) references Customers1(customer_id),
  foreign key(product_id) references Product1(product_id))

  insert into Customers1 values(1,'Winston','USA') 
  insert into Customers1 values(2,'Jonathan','Peru')
  insert into Customers1 values(3,'Moustafa','Egypt')

 

  insert into Product1 values(10,'LC Phone',300)
  insert into Product1 values(20,'LC T-Shirt',10)
  insert into Product1 values(30,'LC Book',45)
  insert into Product1 values(40,'LC Keychain',2)



  insert into Orders1 values(1,1,10,'2020-06-10',1)
  insert into Orders1 values(2,1,20,'2020-07-01',1)
  insert into Orders1 values(3,1,30,'2020-07-08',2)
  insert into Orders1 values(4,2,10,'2020-06-15',2)
  insert into Orders1 values(5,2,40,'2020-07-01',10)
  insert into Orders1 values(6,3,20,'2020-06-24',2)
  insert into Orders1 values(7,3,30,'2020-06-25',2)
  insert into Orders1 values(9,3,30,'2020-05-08',3)

/* Write a solution to report the customer_id 
and customer_name of customers who have spent 
at least $100 in each month of June and July 2020.
Return the result table in any order.
*/
   select * from Customers1 
   select * from Product1 
   select * from Orders1 

select c.customer_id,c.cust_name 
from Customers1 c join Orders1 o
on c.customer_id=o.customer_id
join Product1 p on o.product_id=p.product_id
where year(o.order_date)='2020'
group by c.customer_id,c.cust_name
having sum(case when month(order_date)='06' then o.qunatity*p.price else 0 end)>=100
       and sum(case when month(order_date)='07' then o.qunatity*p.price else 0 end)>=100

