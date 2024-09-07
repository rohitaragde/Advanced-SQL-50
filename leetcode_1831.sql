-------------------------------- Leetcode 1831 ---------------------------------
-------------------- Maximum Transactions Each Day --------------------------

create table Transactions1
(transaction_id int primary key,
 tday datetime,
 amount int)

 insert into Transactions1 values(8,'2021-4-3 15:57:28',57)
 insert into Transactions1 values(9,'2021-4-28 08:47:25',21)
 insert into Transactions1 values(1,'2021-4-29 13:28:30',58)
 insert into Transactions1 values(5,'2021-4-28 16:39:59',40)
 insert into Transactions1 values(6,'2021-4-29 23:39:28',58)

/*Write a solution to report the IDs of the transactions with
the maximum amount on their respective day. 
If in one day there are multiple such transactions, return all of them.
Return the result table ordered by transaction_id in ascending order.
*/

 select * from Transactions1

 with CTE as
 (
 select transaction_id,
 rank() over(partition by day(tday) order by amount desc) as rk
 from Transactions1)

 select transaction_id from CTE
 where rk=1
 order by 1



