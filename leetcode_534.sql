-------------------------- Leetcode 534 --------------------------------
-----------------------Gameplay Analysis III ----------------------

create table Activity11
(player_id int,
 device_id int,
 event_date date,
 games_played int,
 primary key(player_id,event_date))

 insert into Activity11 values(1,2,'2016-03-01',5)
 insert into Activity11 values(1,2,'2016-05-02',6)
 insert into Activity11 values(1,3,'2017-06-25',1)
 insert into Activity11 values(3,1,'2016-03-02',0)
 insert into Activity11 values(3,4,'2018-07-03',5)

/* Write a solution to report for each player and date, 
how many games played so far by the player.
That is, the total number of games played by the player until that date. 
Check the example for clarity.
Return the result table in any order
*/

select * from Activity11

/*
To calculate cumulative sum, we can use self join and window functions
in SQL*/


select p1.player_id,p1.event_date,
       sum(p2.games_played) as games_played_so_far
from Activity11 p1 join Activity11 p2
on p1.player_id=p2.player_id and p1.event_date>=p2.event_date
group by p1.player_id,p1.event_date


select player_id,event_date,
sum(games_played) over(partition by player_id order by event_date) as games_played_so_far
from Activity11 







