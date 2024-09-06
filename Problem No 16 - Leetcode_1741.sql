------------------------------ Leetcode 1741 ----------------------------

------------- Find Total Time Spent By Each Employee ----------------------

create table Empployee101
(emp_id int,
 event_day date,
 in_time int,
 out_time int,
 primary key(emp_id,event_day,in_time))

 insert into Empployee101 values(1,'2020-11-28',4,32) 
 insert into Empployee101 values(1,'2020-11-28',55,200)
 insert into Empployee101 values(1,'2020-12-03',1,42)
 insert into Empployee101 values(2,'2020-11-28',3,33)
 insert into Empployee101 values(2,'2020-12-09',47,74)

 /*
 (emp_id, event_day, in_time) is the primary key (combinations of columns with unique values) of this table.
The table shows the employees' entries and exits in an office.
event_day is the day at which this event happened, in_time is the minute at which the employee entered the office, and out_time is the minute at which they left the office.
in_time and out_time are between 1 and 1440.
It is guaranteed that no two events on the same day intersect in time, and in_time < out_time.
*/

/*Write a solution to calculate the total time in minutes 
spent by each employee on each day at the office. 
Note that within one day, an employee can enter and leave more than once. 
The time spent in the office for a single entry is out_time - in_time.
Return the result table in any order.*/


 select * from Empployee101

 select event_day as dayss,
        emp_id,
        sum(out_time-in_time) as total_time
  from Empployee101
  group by event_day,emp_id
  order by 1,2

