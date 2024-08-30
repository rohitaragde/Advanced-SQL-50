------------------------- Leetcode 1587 --------------------------------------
----------------- Bank Account Summary II ---------------------

create table Users
(account int primary key,
 nname varchar(20))

create table Transactions
(trans_id int primary key,
 account int,
 amount int,
 transacted_on date)

 insert into Users values(900001,'Alice')
 insert into Users values(900002,'Bob')
 insert into Users values(900003,'Charlie')

 insert into Transactions values(1,900001,7000,'2020-08-01') 
 insert into Transactions values(2,900001,7000,'2020-09-01')
 insert into Transactions values(3,900001,-3000,'2020-08-02') 
 insert into Transactions values(4,900002,1000,'2020-09-12') 
 insert into Transactions values(5,900003,6000,'2020-08-07') 
 insert into Transactions values(6,900003,6000,'2020-09-07') 
 insert into Transactions values(7,900003,-4000,'2020-09-11')

 /*Write a solution to report the name and balance of users
with a balance higher than 10000. 
The balance of an account is equal to the
sum of the amounts of all transactions involving that account.
Return the result table in any order.
*/
 
 select * from Users

 select * from Transactions

select u.nname,
       sum(t.amount) as balance 
from Users u join Transactions t
on u.account=t.account
group by u.nname
having sum(t.amount)>10000 



