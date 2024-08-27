---------------------------- Leetcode 1607 -------------------------------------------

-------------------------- Sellers with No Sales ---------------------------------

create table Customer1445
(customer_id int primary key,
 customer_name varchar(10))

create table Orders145
(order_id int primary key,
 sale_date date,
 order_cost int,
 customer_id int,
 seller_id int,
 foreign key(customer_id) references Customer1445(customer_id))
 
 create table Seller145
 (seller_id int primary key,
  seller_name varchar(10))

insert into Customer1445 values(101,'Alice')
insert into Customer1445 values(102,'Bob')
insert into Customer1445 values(103,'Charlie')

insert into Orders145 values(1,'2020-03-01',1500,101,1)
insert into Orders145 values(2,'2020-05-25',2400,102,2)
insert into Orders145 values(3,'2019-05-25',800,101,3)
insert into Orders145 values(4,'2020-09-13',1000,103,2)
insert into Orders145 values(5,'2019-02-11',700,101,2)

insert into Seller145 values(1,'Daniel')
insert into Seller145 values(2,'Elizabeth')
insert into Seller145 values(3,'Frank')



select * from Customer1445
select * from Orders145
select * from Seller145

/*Write a solution to report the names of 
all sellers who did not make any sales in 2020.
Return the result table ordered by seller_name in ascending order.*/


select s.seller_name
from Seller145 s left join Orders145 o
on s.seller_id=o.seller_id and year(o.sale_date)=2020
where o.seller_id is null
group by s.seller_name
order by s.seller_name;






