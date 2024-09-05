----------------------------- Leetcode 1783--------------------------------------
--------------------------- Grandslam Titles ---------------------------

create table Players101
(player_id int primary key,
 player_name varchar(12))

 create table Championships
 (yyear int primary key,
  Wimbledon int,
  Fr_open int,
  US_open int,
  Au_open int)

  insert into Players101 values(1,'Nadal')
  insert into Players101 values(2,'Federer')
  insert into Players101 values(3,'Novak')

  insert into Championships values(2018,1,1,1,1)
  insert into Championships values(2019,1,1,2,2)
  insert into Championships values(2020,2,1,2,2)

  /*
  Write a solution to report the number of grand slam tournaments won by each player. 
  Do not include the players who did not win any tournament.
  Return the result table in any order.
  */

  select * from Players101
  select * from Championships

 WITH cte AS (
    SELECT Wimbledon AS player_id
    FROM Championships
    UNION ALL
    SELECT Fr_open AS player_id
    FROM Championships
    UNION ALL
    SELECT US_open AS player_id
    FROM Championships
    UNION ALL
    SELECT Au_open AS player_id
    FROM Championships
)
SELECT 
    cte.player_id, 
    p.player_name, 
    COUNT(1) AS grand_slams_count
FROM 
    cte
JOIN 
    Players101 p ON cte.player_id = p.player_id
GROUP BY 
    cte.player_id, p.player_name;
