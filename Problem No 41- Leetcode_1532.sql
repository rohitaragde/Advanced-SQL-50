----------------------------- Leetcode 1532 ------------------------------------
-------------------- The Most Recent Three Orders --------------------

create table Customers1
(customer_id int primary key,
 customer_name varchar(10))

 create table Orders1
 (order_id int primary key,
  order_date date,
  customer_id int,
  cost int,
  foreign key(customer_id) references Customers1(customer_id))



  insert into Customers1 values(1,'Winston')
  insert into Customers1 values(2,'Jonathan')
  insert into Customers1 values(3,'Annabelle')
  insert into Customers1 values(4,'Marwan')
  insert into Customers1 values(5,'Khaled')

  insert into Orders1 values(1,'2020-07-31',1,30)
  insert into Orders1 values(2,'2020-07-30',2,40)
  insert into Orders1 values(3,'2020-07-31',3,70)
  insert into Orders1 values(4,'2020-07-29',4,100)
  insert into Orders1 values(5,'2020-06-10',1,1010)
  insert into Orders1 values(6,'2020-08-01',2,102)
  insert into Orders1 values(7,'2020-08-01',3,111)
  insert into Orders1 values(8,'2020-08-03',1,99)
  insert into Orders1 values(9,'2020-08-07',2,32)
  insert into Orders1 values(10,'2020-07-15',1,2)

    /*
  Write a solution to find the most recent three orders of each user. 
  If a user ordered less than three orders, return all of their orders.
  Return the result table ordered by customer_name in ascending order
  and in case of a tie by the customer_id in ascending order.
  If there is still a tie, order them by order_date in descending order.
  */


  select * from Customers1
  select * from Orders1 


  with CTE as
  ( select *,
    dense_rank() over(partition by customer_id order by order_date desc) as rk
	from Orders1 
  )

  select c.customer_name as customer_name,CTE.customer_id,CTE.order_id,CTE.order_date
  from CTE join Customers1 c
  on CTE.customer_id=c.customer_id
  where rk<=3
  order by customer_name,customer_id,order_date desc








