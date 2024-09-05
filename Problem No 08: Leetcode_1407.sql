-------------------------------- Leetcode 1407 -----------------------------

------------------------------- Top Travellers ----------------------------------

create table Users1454
(id int primary key,
 nname varchar(10))

 create table Rides145
 (id int primary key,
  users_id int,
  distance int)

  insert into Users1454 values(1,'Alice')
  insert into Users1454 values(2,'Bob')
  insert into Users1454 values(3,'Alex')
  insert into Users1454 values(4,'Donald')
  insert into Users1454 values(7,'Lee')
  insert into Users1454 values(13,'Jonathan')
  insert into Users1454 values(19,'Elvis')

  insert into Rides145 values(1,1,120)
  insert into Rides145 values(2,2,317)
  insert into Rides145 values(3,3,222)
  insert into Rides145 values(4,7,100)
  insert into Rides145 values(5,13,312)
  insert into Rides145 values(6,19,50)
  insert into Rides145 values(7,7,120)
  insert into Rides145 values(8,19,400)
  insert into Rides145 values(9,7,230)

  select * from Users1454
  select * from Rides145

  /* Write a solution to report the distance traveled by each user.

Return the result table ordered by travelled_distance in descending order, 
if two or more users traveled the same distance, 
order them by their name in ascending order.
*/

select u.nname,isnull(sum(r.distance),0) as travelled_distance
from Users1454 u left join Rides145 r
on u.id=r.users_id
group by u.nname
order by travelled_distance desc,u.nname
