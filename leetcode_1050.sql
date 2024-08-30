--------------------------- Leetcode 1050 ------------------------------------
-----------  Actors and DIrectors Who Cooperated Atleast Three Times-----------

create table ActorDirector
(actor_id int,
 director_id int,
 timestamp int primary key)

 insert into ActorDirector values(1,1,0)
 insert into ActorDirector values(1,1,1)
 insert into ActorDirector values(1,1,2)
 insert into ActorDirector values(1,2,3)
 insert into ActorDirector values(1,2,4)
 insert into ActorDirector values(2,1,5)
 insert into ActorDirector values(2,1,6)

 select * from ActorDirector

/*Write a solution to find all the pairs 
(actor_id, director_id) where the actor has 
cooperated with the director at least three times.
Return the result table in any order.*/

select actor_id,director_id 
from ActorDirector
group by actor_id,director_id
having count(*)>=3