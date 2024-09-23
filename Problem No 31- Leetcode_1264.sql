----------------------------- Leetcode 1264 ------------------------------------
------------------------ Page Recommendations ---------------------------

create table Friendship1
(user1_id int,
 user2_id int,
 primary key(user1_id,user2_id))

create table Likes
([user_id] int,
page_id int,
primary key([user_id],page_id))


insert into Friendship1 values(1,2)
insert into Friendship1 values(1,3)
insert into Friendship1 values(1,4)
insert into Friendship1 values(2,3)
insert into Friendship1 values(2,4)
insert into Friendship1 values(2,5)
insert into Friendship1 values(6,1)

insert into Likes values(1,88)
insert into Likes values(2,23)
insert into Likes values(3,24)
insert into Likes values(4,56)
insert into Likes values(5,11)
insert into Likes values(6,33)
insert into Likes values(2,77)
insert into Likes values(3,77)
insert into Likes values(6,88)

/*Write a solution to recommend pages to the user 
with user_id = 1 using the pages that your friends liked. 
It should not recommend pages you already liked.
Return result table in any order without duplicates.
*/

select * from Friendship1
select * from Likes 

---- Query (Approach 01) ----

 SELECT user1_id AS user_id FROM Friendship WHERE user2_id = 1
        UNION
        SELECT user2_id AS user_id FROM Friendship WHERE user1_id = 1


with T as
(select user1_id as [user_id] from Friendship1 where user2_id=1
union all
select user2_id as [user_id] from Friendship1 where user1_id =1)


select distinct page_id as recommended_page 
from T join Likes l on T.[user_id]=l.[user_id] 
where page_id not in (select page_id from Likes where [user_id]=1)

---- Query ( Approach 02) -----

SELECT DISTINCT page_id AS recommended_page
FROM Likes
WHERE
    [user_id] IN (
        SELECT user1_id AS [user_id] FROM Friendship1 WHERE user2_id = 1
        UNION ALL
        SELECT user2_id AS [user_id] FROM Friendship1 WHERE user1_id = 1
    )
    AND page_id NOT IN (SELECT page_id FROM Likes WHERE [user_id] = 1);

