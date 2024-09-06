---------------------------------- Leetcode 184 ------------------------------------
-------------------------- Department Highest Salary ---------------------------

create table Emp009
(id int primary key,
 nname varchar(10),
 salary int,
 departmentid int
 foreign key(departmentid) references Dept009(id))
 

 create table Dept009
 (id int primary key,
  deptname varchar(12))

  insert into Dept009 values(1,'IT')
   insert into Dept009 values(2,'Sales')

   insert into Emp009 values(1,'Joe',70000,1)
   insert into Emp009 values(2,'Jim',90000,1)
   insert into Emp009 values(3,'Henry',80000,2)
   insert into Emp009 values(4,'Sam',60000,2)
   insert into Emp009 values(5,'Max',90000,1)

/* Write a solution to find employees who have 
the highest salary in each of the departments.
Return the result table in any order.
*/

   select * from Dept009
   select * from Emp009


---- Approach 01 -----

select d.deptname as Department, e.nname as Employee, e.salary as Salary
from Emp009 e join Dept009 d
on e.departmentid=d.id
where (d.id,e.salary) in
(select departmentid, max(salary) as salary
  from Emp009 group by 1)


---- Approach 02 ------

with cte as
(select d.deptname as Department,
       e.nname as Employee,
	   e.salary as Salary,
rank() over(partition by d.deptname order by salary desc) as rn
from Emp009 e join Dept009 d 
on e.departmentid=d.id)

select department,employee,salary from cte where rn=1






