---------------------------------- Leetcode 1767 --------------------------------------
--------------------- Find the Subtasks That Did Not Execute -----------------------

use rohit;

create table Tasks
(task_id int primary key,
 subtasks_count int)

 create table Executed
 (task_id int,
  subtask_id int,
  primary key(task_id,subtask_id))


  insert into Tasks values(1,3)
  insert into Tasks values(2,2)
  insert into Tasks values(3,4)

  insert into Executed values(1,2)
  insert into Executed values(3,1)
  insert into Executed values(3,2)
  insert into Executed values(3,3)
  insert into Executed values(3,4)

  /* Write a solution to report the IDs of the missing subtasks for each task_id.
Return the result table in any order.
*/

select * from Tasks
select * from Executed 


WITH RECURSIVE cte AS (
    SELECT task_id, subtasks_count
    FROM Tasks
    UNION ALL
    SELECT task_id, subtasks_count - 1
    FROM cte
    WHERE subtasks_count > 1
)
SELECT cte.task_id, cte.subtasks_count AS subtask_id
FROM cte
where (cte.task_id,cte.subtasks_count) not in (select * from executed)
order by cte.task_id





