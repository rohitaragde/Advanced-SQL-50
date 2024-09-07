---------------------------- Leetcode 1077 ----------------------------------------
------------------------- Project Employees III ---------------------

create table Project11
(project_id int,
 employee_id int,
 primary key(project_id,employee_id),
 foreign key(employee_id) references Employee11(emp_id))

 create table Employee11
 (emp_id int primary key,
  emp_name varchar(10),
  exp_years int)

  insert into Project11 values(1,1)
  insert into Project11 values(1,2)
  insert into Project11 values(1,3)
  insert into Project11 values(2,1)
  insert into Project11 values(2,4)

  insert into Employee11 values(1,'Khaled',3)
  insert into Employee11 values(2,'Ali',2)
  insert into Employee11 values(3,'John',3)
  insert into Employee11 values(4,'Doe',2)

/* Write a solution to report the most experienced employees
in each project. In case of a tie, 
report all employees with the maximum number of experience years.
Return the result table in any order.
*/
  select * from Employee11
  select * from Project11 

  with CTE as
  (select p.project_id as project_id,e.emp_id as employee_id,e.exp_years,
   dense_rank() over(partition by p.project_id order by e.exp_years desc) as rnk
    from Project11 p left join Employee11 e
	on p.employee_id=e.emp_id)

select project_id,employee_id from CTE
where rnk=1
order by 1






