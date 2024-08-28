------------------------------ Leetcode 1212 ----------------------------------------

------------------- Team Scores in a Football Tournament -------------------------------

create table Teams
(team_id int primary key,
 team_name varchar(10))


 create table Matches
 (match_id int primary key,
  host_team int,
  guest_team int,
  host_goals int,
  guest_goals int)

insert into Teams values(10,'Leetcode FC')
insert into Teams values(20,'NewYork FC')
insert into Teams values(30,'Atlanta FC')
insert into Teams values(40,'Chicago FC')
insert into Teams values(50,'Toronto FC')

insert into matches values(1,10,20,3,0)
insert into matches values(2,30,10,2,2)
insert into matches values(3,10,50,5,1)
insert into matches values(4,20,30,1,0)
insert into matches values(5,50,30,1,0)



select * from Teams 
select * from matches 


/*
You would like to compute the scores of all teams after all matches. Points are awarded as follows:

A team receives three points if they win a match (i.e., Scored more goals than the opponent team).
A team receives one point if they draw a match (i.e., Scored the same number of goals as the opponent team).
A team receives no points if they lose a match (i.e., Scored fewer goals than the opponent team).
Write a solution that selects the team_id, team_name and num_points of each team in the tournament after all described matches.

Return the result table ordered by num_points in decreasing order. In case of a tie, order the records by team_id in increasing order.
*/

select * from Teams 
select * from matches 

select team_id,team_name,
sum
(
   case when t.team_id=m.host_team and m.host_goals>m.guest_goals then 3
        when t.team_id=m.guest_team and m.guest_goals>m.host_goals then 3
		when m.host_goals=m.guest_goals then 1
	else 0
	end
) as num_points
from Teams t left join matches m
on t.team_id=m.host_team or t.team_id=m.guest_team
group by team_id,team_name
order by num_points desc









from Teams


