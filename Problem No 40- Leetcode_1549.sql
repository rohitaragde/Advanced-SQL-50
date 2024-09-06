--------------------------- leetcode 1549 --------------------------------
------------------- The Most Recent Orders For Each Product ---------------------

create table Cust109
(cust_id int primary key,
 cust_name varchar(12))

 create table Orders101
 (order_id int primary key,
  order_date date,
  customer_id int,
  product_id int)

  create table Products105
  (product_id int primary key,
   product_name varchar(12),
   price int)

   insert into Cust109 values(1,'Winston')
   insert into Cust109 values(2,'Jonathan')
   insert into Cust109 values(3,'Annabelle')
   insert into Cust109 values(4,'Marwan')
   insert into Cust109 values(5,'Khaled')


   insert into Orders101 values(1,'2020-07-31',1,1)
   insert into Orders101 values(2,'2020-07-30',2,2)
   insert into Orders101 values(3,'2020-08-29',3,3)
   insert into Orders101 values(4,'2020-07-29',4,1)
   insert into Orders101 values(5,'2020-06-10',1,2)
   insert into Orders101 values(6,'2020-08-01',2,1)
   insert into Orders101 values(7,'2020-08-01',3,1)
   insert into Orders101 values(8,'2020-08-03',1,2)
   insert into Orders101 values(9,'2020-08-07',2,3)
   insert into Orders101 values(10,'2020-07-15',1,2)

   insert into Products105 values(1,'keyboard',120)
   insert into Products105 values(2,'mouse',80)
   insert into Products105 values(3,'screen',600) 
   insert into Products105 values(4,'hard disk',450)

  /*Write a solution to find the most recent order(s) of each product.
Return the result table ordered by product_name in ascending order
and in case of a tie by the product_id in ascending order.
If there still a tie, order them by order_id in ascending order.
*/

   select * from Cust109
   select * from Orders101
   select * from Products105

with cte as
(
   select p.product_name as product_name,
          p.product_id as product_id,
		  o.order_id as order_id,
		  o.order_date as order_date,
   rank() over(partition by o.product_id order by o.order_date desc) as rn
   from Orders101 o join Products105 p
   on o.product_id=p.product_id
)

select product_name,product_id,order_id,order_date
from cte where rn=1
  





