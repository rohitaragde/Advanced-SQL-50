--------------------------- Leetcode 1693 --------------------------------
----------------------- Daily Leads and Partners ----------------------

create table DailySales
(date_id date,
 make_name varchar(10),
 lead_id int,
 partner_id int)

 insert into DailySales values('2020-12-08','toyota',0,1)
 insert into DailySales values('2020-12-08','toyota',1,0)
 insert into DailySales values('2020-12-08','toyota',1,2)
 insert into DailySales values('2020-12-07','toyota',0,2)
 insert into DailySales values('2020-12-07','toyota',0,1)
 insert into DailySales values('2020-12-08','honda',1,2)
 insert into DailySales values('2020-12-08','honda',2,1)
 insert into DailySales values('2020-12-07','honda',0,1)
 insert into DailySales values('2020-12-07','honda',1,2)
 insert into DailySales values('2020-12-07','honda',2,1)

 /*
 For each date_id and make_name,
 find the number of distinct lead_id's and distinct partner_id's.
Return the result table in any order.
*/

 select * from DailySales

 select date_id,make_name,
        count(distinct lead_id) as distinct_leads,
		count(distinct partner_id) as distinct_partners
 from DailySales
 group by date_id,make_name
 order by date_id

