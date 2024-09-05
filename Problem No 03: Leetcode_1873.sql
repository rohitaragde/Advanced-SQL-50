------------------------- Leetcode 1873 --------------------------------------

----------------------- Calculate Special Bonus------------------------------------

create table Emp0010
(emp_id int primary key,
 emp_name varchar(10),
 salary int)

 insert into Emp0010 values(2,'Meir',3000) 
 insert into Emp0010 values(3,'Michael',3800)
 insert into Emp0010 values(7,'Addilyn',7400)
 insert into Emp0010 values(8,'Juan',6100)
 insert into Emp0010 values(9,'kannon',7700)

 select * from Emp0010

 /*Write a solution to calculate the bonus of each employee. 
 The bonus of an employee is 100% of their salary
 if the ID of the employee is an odd number and the employee's 
 name does not start with the character 'M'. 
 The bonus of an employee is 0 otherwise.
Return the result table ordered by employee_id.*/

select emp_id,
      (case when emp_id%2!=0 and emp_name not like '%m%' then salary else 0 end) as bonus
from Emp0010
order by emp_id 



