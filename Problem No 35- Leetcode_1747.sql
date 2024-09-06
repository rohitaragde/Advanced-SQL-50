------------------------------ Leetcode 1747 ----------------------------------------
------------------------- Leetflex Banned Accounts -------------------------------------

create table LogInfo
(acccount_id int,
 ip_address int,
 login datetime,
 logout datetime)

 insert into LogInfo values(1,1,'2021-02-01 09:00:00','2021-02-01 09:30:00') 
 insert into LogInfo values(1,2,'2021-02-01 08:00:00','2021-02-01 11:30:00') 
 insert into LogInfo values(2,6,'2021-02-01 20:30:00','2021-02-01 22:00:00')
 insert into LogInfo values(2,7,'2021-02-02 20:30:00 ','2021-02-02 22:00:00') 
 insert into LogInfo values(3,9,'2021-02-01 16:00:00','2021-02-01 16:59:59')
 insert into LogInfo values(3,13,'2021-02-01 17:00:00','2021-02-01 17:59:59')
 insert into LogInfo values(4,10,'2021-02-01 16:00:00','2021-02-01 17:00:00')
 insert into LogInfo values(4,11,'2021-02-01 17:00:00','2021-02-01 17:59:59') 



 /*
 Write a solution to find the account_id of the accounts 
 that should be banned from Leetflex.
 An account should be banned if it was logged in at some moment from 
 two different IP addresses.
Return the result table in any order.
*/

 select * from LogInfo

select distinct a.acccount_id 
from LogInfo a join LogInfo b
on a.acccount_id=b.acccount_id
where a.ip_address!=b.ip_address
and a.login between b.login and b.logout

