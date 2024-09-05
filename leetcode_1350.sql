---------------------------------- Leetcode 1350 -----------------------------------
------------------------ Students with Invalid Departments -------------------------

create table Departments1
(id int primary key,
 nname varchar(40))

 create table Students111
 (stu_id int primary key,
  name varchar(12),
  department_id int)

insert into Departments1 values(1,'Electrical Engineering')
insert into Departments1 values(2,'Computer Engineering')
insert into Departments1 values(13,'Business Administration')

insert into Students111 values(23,'Alice',1)
insert into Students111 values(1,'Bob',7)
insert into Students111 values(5,'Jennifer',13)
insert into Students111 values(2,'John',14)
insert into Students111 values(4,'Jasmine',77)
insert into Students111 values(3,'Steve',74)
insert into Students111 values(6,'Luis',1)
insert into Students111 values(8,'Jonathan',7)
insert into Students111 values(7,'Daiana',33)
insert into Students111 values(11,'Madelynn',1)

/* Find the id and the name of all students who are
enrolled in departments that no longer exist.
Return the result table in any order.
*/

select * from Departments1
select * from Students111

select distinct stu_id,[name] from Students111
where department_id not in (select id from Departments1)
order by stu_id 





