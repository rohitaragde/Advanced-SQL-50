------------------------------ Leetcode 608 --------------------------------
-------------------------------Tree Node --------------------------

create table Tree
(id int primary key,
 p_id int)

 insert into Tree values(1,null)
 insert into Tree values(2,1)
 insert into Tree values(3,1)
 insert into Tree values(4,2)
 insert into Tree values(5,2)

 -- Example 02 --

 insert into tree values(1,null)

 select * from Tree 

 /*
 Each node in the tree can be one of three types:

"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.
Write a solution to report the type of each node in the tree.

Return the result table in any order.
*/

select * from tree 

select id,
case when p_id is null then 'Root'
     when id in(select p_id from tree) then 'Inner'
else 'Leaf'
end as Type
from tree 




