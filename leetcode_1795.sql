--------------------------- Leetcode 1795 ------------------------------------

-------------------------- Rearrange Products Table ---------------------------------

create table Products1
(product_id int primary key,
 store1 int,
 store2 int,
 store3 int)

 insert into Products1 values(0,95,100,105)
 insert into Products1 values(1,70,null,80)

 /* Write a solution to rearrange the Products table 
 so that each row has (product_id, store, price). 
 If a product is not available in a store, 
 do not include a row with that product_id and store combination in the result table.
Return the result table in any order.
*/


 select * from Products1 

 select product_id,'store1' as store,store1 as price from Products1 where store1 is not null
 union
  select product_id,'store2' as store,store2 as price from Products1 where store2 is not null
  union
   select product_id,'store3' as store,store3 as price from Products1 where store3 is not null








