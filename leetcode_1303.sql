-------------------------------- Leetcode 1303 ----------------------------------------
------------------------------ Find the Team Size --------------------------

create table Emp
(emp_id int primary key,
 team_id int)

insert into Emp values(1,8) 
insert into Emp values(2,8) 
insert into Emp values(3,8) 
insert into Emp values(4,7) 
insert into Emp values(5,9) 
insert into Emp values(6,9)

/*
Write a solution to find the team size of each of the employees.
Return the result table in any order.
*/

select * from Emp 

select e1.emp_id, count(e1.team_id) as team_size
from Emp e1 left join Emp e2
on e1.team_id=e2.team_id
group by e1.emp_id 
 





