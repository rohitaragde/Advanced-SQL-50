--------------------------------- Leetcode 512 -----------------------------------
----------------------------- Gameplay Analysis II-----------------------

create table Activity001
(player_id int,
 device_id int,
 event_date date,
 games_played int,
 primary key(player_id,event_date))

 insert into Activity001 values(1,2,'2016-03-01',5)
 insert into Activity001 values(1,2,'2016-05-02',6)
 insert into Activity001 values(2,3,'2017-06-25',1)
 insert into Activity001 values(3,1,'2016-03-02',0)
 insert into Activity001 values(3,4,'2018-07-03',5)

 select * from Activity001

 /*Write a solution to report the device that is first logged in for each player.
Return the result table in any order.*/

select player_id,device_id
from Activity001
where (player_id,event_date) in
(select player_id, min(event_date) as event_date
 from Activity001 group by player_id)






