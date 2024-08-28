--------------------------- Leetcode 1890 -----------------------------------

---------------------- Latest Login in 2020 ---------------------------------

create table Logins
(users_id int,
 time_stamp datetime,
 primary key(users_id,time_stamp))

insert into logins values(6,'2020-06-30 15:06:07')
insert into logins values(6,'2021-04-21 14:06:06')
insert into logins values(6,'2019-03-07 00:18:15')
insert into logins values(8,'2020-02-01 05:10:53')
insert into logins values(8,'2020-12-30 00:46:50')
insert into logins values(2,'2020-01-16 02:49:50')
insert into logins values(2,'2019-08-25 07:59:08')
insert into logins values(14,'2019-07-14 09:00:00')
insert into logins values(14,'2021-01-06 11:59:59')

select * from logins 

/*Write a solution to report the latest login for all users
in the year 2020. Do not include the users who did not login in 2020.
Return the result table in any order
*/

select users_id,max(time_stamp) as last_timestamp
from logins
where year(time_stamp)='2020'
group by users_id 


select distinct users_id, first_value(time_stamp) over(partition by users_id order by time_stamp desc) as last_stamp
from Logins
where year(time_stamp) = '2020'
