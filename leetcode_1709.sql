-------------------------------- Leetcode 1709-----------------------------------------
----------------------- Biggest Window Between Visits ------------------------

create table UserVisits1
(users_id int,
 visit_date date)

 insert into UserVisits1 values(1,'2020-11-28')
 insert into UserVisits1 values(1,'2020-10-20')
 insert into UserVisits1 values(1,'2020-12-03')
 insert into UserVisits1 values(2,'2020-10-05')
 insert into UserVisits1 values(2,'2020-12-09')
 insert into UserVisits1 values(3,'2020-11-11')

 select * from UserVisits1

 /*

 Assume today's date is '2021-1-1'.

Write a solution that will, for each user_id, find out the largest window of days between each visit and the one right after it (or today if you are considering the last visit).

Return the result table ordered by user_id

*/

 
with CTE as
(
       select users_id,visit_date,
       lead(visit_date,1,'2021-01-01') over(partition by users_id order by visit_date)  as next_date
	   from UserVisits1
)

select users_id,max(datediff(day,visit_date,next_date)) as biggest_window
from CTE
group by users_id 









 

