----------------------------- Leetcode 1412 ----------------------------------------
---------------------- Find the Quiet Students in All Exams ----------------------

create table Student101
(student_id int primary key,
 student_name varchar(10))

 create table Exams101
 (exam_id int,
  student_id int,
  score int,
  primary key(exam_id,student_id),
  foreign key(student_id) references Student101(student_id))

  insert into Student101 values(1,'Daniel')
  insert into Student101 values(2,'Jade')
  insert into Student101 values(3,'Stella')
  insert into Student101 values(4,'Jonathan')
  insert into Student101 values(5,'Will')

  insert into Exams101 values(10,1,70)
  insert into Exams101 values(10,2,80)
  insert into Exams101 values(10,3,90)
  insert into Exams101 values(20,1,80)
  insert into Exams101 values(30,1,70)
  insert into Exams101 values(30,3,80)
  insert into Exams101 values(30,4,90)
  insert into Exams101 values(40,1,60)
  insert into Exams101 values(40,2,70)
  insert into Exams101 values(40,4,80)

  /*
  A quiet student is the one 
  who took at least one exam and 
  did not score the highest or the lowest score.

Write a solution to report the students (student_id, student_name)
being quiet in all exams. 
Do not return the student who has never taken any exam.
Return the result table ordered by student_id.
*/

select * from Student101
select * from Exams101


with cte as
(
select exam_id,student_id,score,
dense_rank() over(partition by exam_id order by score desc) as highest_rank,
dense_rank() over(partition by exam_id order by score asc) as lowest_rank
from Exams101
)

select distinct e.student_id,s.student_name
from Exams101 e left join Student101 s
on e.student_id=s.student_id
where e.student_id not in
(select student_id from CTE where highest_rank=1 or lowest_rank=1)
order by e.student_id




