-------------------------- Leetcode 1571 ------------------------------------
---------------------- Warehouse Manager  ----------------------------

create table Warehouse
(nname varchar(10),
 product_id int,
 units int,
 primary key(nname,product_id))

 create table Products
 (product_id int primary key,
  product_name varchar(11),
  width int,
  length int,
  height int)

  insert into Warehouse values('LCHouse1',1,1)
  insert into Warehouse values('LCHouse1',2,10)
  insert into Warehouse values('LCHouse1',3,5)
  insert into Warehouse values('LCHouse2',1,2)
  insert into Warehouse values('LCHouse2',2,2)
  insert into Warehouse values('LCHouse3',4,1)

  insert into Products values(1,'LC-TV',5,50,40)
  insert into Products values(2,'LC-KeyChain',5,5,5)
  insert into Products values(3,'LC-Phone',2,10,10)
  insert into Products values(4,'LC-T-Shirt',4,10,20)

/*Write a solution to report the number of cubic feet of volume 
the inventory occupies in each warehouse.
Return the result table in any order.
*/

  select * from Warehouse
  select * from Products

  select w.nname,
   SUM((p.length * p.width * p.height) * w.units) AS total_volume
  from Warehouse w left join Products p
  on w.product_id=p.product_id
  group by w.nname

