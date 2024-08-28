----------------------- Leetcode 511 --------------------------------
-----------------------Gameplay Analysis I----------------------------


create table Activity365
(player_id int,
 device_id int,
 event_date date,
 games_played int,
 primary key(player_id,event_date))

 insert into Activity365 values(1,2,'2016-03-01',5)
 insert into Activity365 values(1,2,'2016-05-02',6) 
 insert into Activity365 values(2,3,'2017-06-25',1) 
 insert into Activity365 values(3,1,'2016-03-02',0) 
 insert into Activity365 values(3,4,'2018-07-03',5) 

 select * from Activity365

 /*Write a solution to find the first login date for each player.
Return the result table in any order.*/

select player_id,min(event_date) as first_login_date
from Activity365
group by player_id