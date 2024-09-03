----------------------------- Leetcode 613 ----------------------------------
---------------------- Shortest Distance in a Line ---------------------------

create table Point
(x int primary key)

insert into Point values(-1)
insert into Point values(0)
insert into Point values(2)

/*Find the shortest distance between any two points from the Point table.*/

select * from Point

select min(x1.x-x2.x) as short
from Point x1 join Point x2
on x1.x>x2.x





