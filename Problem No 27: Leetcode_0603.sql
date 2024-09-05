--------------------------- Leetcode 0603 ------------------------------------
----------------------- Consecutive Available Seats-------------------

create table Cinema101
(seat_id int identity(1,1),
 free bit)

insert into Cinema101 values(1)
insert into Cinema101 values(0)
insert into Cinema101 values(1)
insert into Cinema101 values(1)
insert into Cinema101 values(1)

 /*Find all the consecutive available seats in the cinema.
Return the result table ordered by seat_id in ascending order.*/
 
select * from Cinema101

select distinct c.seat_id from 
Cinema101 c join Cinema101 c1
on abs(c.seat_id-c1.seat_id)=1 and c.free=c1.free
order by 1


