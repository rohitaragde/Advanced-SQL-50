------------------------------ Leetcode 0607 --------------------------------------------

------------------------------ Sales Person -----------------------------------------

create table SalesPerson123
(sales_id int primary key,
 nname varchar(12),
 salary int,
 commission_rate int,
 hire_date date)

create table Company123
(com_id int primary key,
 com_name varchar(12),
 com_city varchar(12))

create table Orders123
(order_id int primary key,
 order_date date,
 com_id int,
 sales_id int,
 amount int,
 foreign key(com_id) references Company123(com_id),
 foreign key(sales_id) references SalesPerson123(sales_id))

insert into SalesPerson123 values(1,'John',100000,6,'4/1/2006') 
insert into SalesPerson123 values(2,'Amy',12000,5,'5/1/2010') 
insert into SalesPerson123 values(3,'Mark',65000,12,'12/25/2008') 
insert into SalesPerson123 values(4,'Pam',25000,25,'1/1/2005') 
insert into SalesPerson123 values(5,'Alex',5000,10,'2/3/2007') 

insert into Company123 values(1,'RED','Boston') 
insert into Company123 values(2,'ORANGE','New York') 
insert into Company123 values(3,'YELLOW','Boston') 
insert into Company123 values(4,'GREEN','Austin') 

insert into Orders123 values(1,'1/1/2014',3,4,10000)
insert into Orders123 values(2,'2/1/2014',4,5,5000)
insert into Orders123 values(3,'3/1/2014',1,1,50000)
insert into Orders123 values(4,'4/1/2014',1,4,25000)

/*
Write a solution to find the names of all the salespersons who did not have any
orders related to the company with the name "RED".
Return the result table in any order.
The result format is in the following example.
*/

select * from SalesPerson123
select * from Company123
select * from Orders123

select s.nname from SalesPerson123 s
where s.sales_id not in
( select o.sales_id from Orders123 o
   join Company123 c on o.com_id=c.com_id
   where c.com_name='RED')





















