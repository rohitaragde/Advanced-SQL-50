------------------------------- Leetcode 1699 --------------------------------
--------------------- Number of Calls Between Two Persons ----------------------

create table Calls1
(from_id int,
 to_id int,
 duration int)

insert into Calls1 values(1,2,59)
insert into Calls1 values(2,1,11)
insert into Calls1 values(1,3,20)
insert into Calls1 values(3,4,100)
insert into Calls1 values(3,4,200)
insert into Calls1 values(3,4,200)
insert into Calls1 values(4,3,499)

/*Write a solution to report the number of calls and the 
total call duration between each pair of distinct persons
(person1, person2) where person1 < person2.
Return the result table in any order.
*/

select * from Calls1

----- Approach 01-------

select least(from_id,to_id) as person1,
        greatest(from_id,to_id) as person2,
		count(*) as call_count,
		sum(duration) as total_duration
		from Calls1
		group by person1,person2

-------- Approach 02 ----------

with calls_cte as
(
  select from_id,to_id,duration
  from calls1 where from_id<to_id
  union all
  select to_id,from_id,duration
  from calls1 where to_id<from_id
)

select from_id as person1,
       to_id as person2,
	   count(*) as call_count,
	   sum(duration) as total_duration
from calls_cte
group by person1,person2





