------------------------------ Leetcode 00183 ----------------------------------------

create table Cust11
(cust_id int primary key,
 cust_nname varchar(12))

 create table orders11
 (order_id int primary key,
   cust_id int,
  foreign key(cust_id) references Cust11(cust_id)
 )

 insert into Cust11 values(1,'Joe')
 insert into Cust11 values(2,'Henry')
 insert into Cust11 values(3,'Sam')
 insert into Cust11 values(4,'Max')

 insert into Orders11 values(1,3)
 insert into Orders11 values(2,1)
 

/*Write a solution to find all customers who never order anything.
Return the result table in any order.*/

 select * from Cust11
 select * from orders11

 select cust_nname from Cust11 c left join orders11 o
 on c.cust_id=o.cust_id
 where o.order_id is null
 order by cust_nname





