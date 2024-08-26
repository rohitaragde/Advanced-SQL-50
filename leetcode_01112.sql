----------------------------- Leetcode 01112-----------------------------------------
-------------------------- Highest Grade For Each Student ----------------------------

create table Enrollments11
(student_id int,
 course_id int,
 grade int not null,
 primary key(student_id,course_id))

 insert into Enrollments11 values(2,2,95)
 insert into Enrollments11 values(2,3,95)
 insert into Enrollments11 values(1,1,90)
 insert into Enrollments11 values(1,2,99)
 insert into Enrollments11 values(3,1,80)
 insert into Enrollments11 values(3,2,75)
 insert into Enrollments11 values(3,3,82)

 /*Write a solution to find the highest grade 
 with its corresponding course for each student.
 In case of a tie, you should find the course with the smallest course_id.
Return the result table ordered by student_id in ascending order.*/


select * from
(select * ,
rank() over(partition by student_id  order by grade desc,course_id) rn
from Enrollments11) a
where rn=1

with cte as
(select * ,
rank() over(partition by student_id  order by grade desc,course_id) rn
from Enrollments11)

select * from cte
where rn=1




