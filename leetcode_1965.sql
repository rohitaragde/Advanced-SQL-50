------------------------------ Leetcode 1965 ----------------------------------
---------------- Employees with Missing Information ----------------

create table Employees
(employee_id int primary key,
 emp_name varchar(10))

 create table Salaries
 (employee_id int primary key,
  salary int)

  insert into Employees values(2,'Crew')
  insert into Employees values(4,'Haven')
  insert into Employees values(5,'Kristian')

  insert into Salaries values(5,76071)
  insert into Salaries values(1,22517)
  insert into Salaries values(4,63539)

  /* Write a solution to report the IDs of all the employees with missing information.

  The information of an employee is missing if:
The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.
*/



  select * from Employees
  select * from Salaries 

  select employee_id from Employees where employee_id 
  not in(select employee_id from Salaries)
  union
  select employee_id from Salaries where employee_id
  not in (select employee_id from employees)
  order by employee_id 


  

