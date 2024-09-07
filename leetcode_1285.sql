--------------------------- Leetcode 1285 ------------------------------------
-------------------- Find The Start and End of COntinuous Ranges -----------------

create table LLogs1
(log_id int primary key)

insert into LLogs1 values(1),(2),(3),(7),(8),(10)

/* Write a solution to find the start and end number of continuous ranges in the table Logs.

Return the result table ordered by start_id.
*/

select * from LLogs1 

select log_id,
  row_number() over(order by log_id) as rn,
  log_id-row_number() over(order by log_id) as diff
  from llogs1

select min(log_id) as start_id, max(log_id) as end_id
from
( select log_id,
  row_number() over(order by log_id) as rn,
  log_id-row_number() over(order by log_id) as diff
  from llogs1) temp
group by diff 

