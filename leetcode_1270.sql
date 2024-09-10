------------------------------ Leetcode 1270 -----------------------------------------
------------------------- All People Report to the Given Manager -----------------------

create table Employees1
(employee_id int primary key,
 employee_name varchar(10),
 manager_id int)

 insert into Employees1 values(1,'Boss',1)
 insert into Employees1 values(3,'Alice',3)
 insert into Employees1 values(2,'Bob',1)
 insert into Employees1 values(4,'Daniel',2)
 insert into Employees1 values(7,'Luis',4)
 insert into Employees1 values(8,'Jhon',3)
 insert into Employees1 values(9,'Angela',8)
 insert into Employees1 values(77,'Robert',1)

 /* Write a solution to find employee_id of all employees 
 that directly or indirectly report their work to the head of the company.
The indirect relation between managers will not exceed three managers as
the company is small. Return the result table in any order.
*/

select * from Employees1



SELECT e1.employee_id
FROM
    Employees1 AS e1
    JOIN Employees1 AS e2 ON e1.manager_id = e2.employee_id
    JOIN Employees1 AS e3 ON e2.manager_id = e3.employee_id
WHERE e1.employee_id != 1 AND e3.manager_id = 1;


