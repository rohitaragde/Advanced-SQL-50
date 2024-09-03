--------------------------- Leetcode 1501 --------------------------------
-------------------- Countries you can safely invest in ----------------------------

create table Person11
(id int primary key,
 p_name varchar(10),
 phone_number varchar(20))

 create table Country
 (c_name varchar(10),
  country_code varchar(11))

  create table Calls
  (caller_id int,
   callee_id int,
   duration int)

insert into Person11 values(3,'Jonathan','051-1234567')
insert into Person11 values(12,'Elvis','051-7654321')
insert into Person11 values(1,'Moncef','212-1234567')
insert into Person11 values(2,'Maroua','212-6523651')
insert into Person11 values(7,'Meir','972-1234567 ')
insert into Person11 values(9,'Rachel','972-0011100')

insert into Country values('Peru','051')
insert into Country values('Israel','972')
insert into Country values('Morocco','212')
insert into Country values('Germany','049')
insert into Country values('Ethiopia','251')


insert into Calls values(1,9,33)
insert into Calls values(2,9,4)
insert into Calls values(1,2,59)
insert into Calls values(3,12,102)
insert into Calls values(3,12,330)
insert into Calls values(12,3,5)
insert into Calls values(7,9,13)
insert into Calls values(7,1,3)
insert into Calls values(9,7,1)
insert into Calls values(1,7,7)

/* A telecommunications company wants to invest in new countries. The company intends to invest in the countries where the average call duration of the calls in this country is strictly greater than the global average call duration.
Write a solution to find the countries where this company can invest.

Return the result table in any order.
*/


select * from Person11
select * from Country


select co.c_name as country from
       Person11 p join Calls c
	   on p.id=c.callee_id or p.id=c.caller_id
	   join Country co on left(p.phone_number,3)=co.country_code
	   group by co.c_name
	   having avg(duration)>(select avg(duration) as world_duration from calls)
      
      










