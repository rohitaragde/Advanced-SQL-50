use rohit;

------------------------------ Leetcode 1495 --------------------------------------
----------------Friendly Movies Streamed Last Month -----------------------------

create table TVProgram
(program_date datetime,
 content_id int,
 channel varchar(12),
 primary key(program_date,content_id))
 
 create table Content
 (content_id varchar(10) primary key,
  title varchar(22),
  kids_content enum('Y','N'),
  content_type varchar(10))
  
  insert into TVProgram values('2020-06-10 08:00',1,'LC-Channel')
  insert into TVProgram values('2020-05-11 12:00',2,'LC-Channel')
  insert into TVProgram values('2020-05-12 12:00',3,'LC-Channel')
  insert into TVProgram values('2020-05-13 14:00',4,'Disney Ch')
  insert into TVProgram values('2020-06-18 14:00',4,'Disney Ch')
  insert into TVProgram values('2020-07-15 16:00',5,'Disney Ch')
  
  insert into Content values(1,'Leetcode Movie','N','Movies')
  insert into Content values(2,'Alg. for Kids','Y','Series')
  insert into Content values(3,'Database Sols','N','Series')
  insert into Content values(4,'Alaadin','Y','Movies')
  insert into Content values(5,'Cinderella','Y','Movies')
     
     
  select * from TVProgram
  select * from Content
 
/*Write a solution to report the distinct titles of the kid-friendly movies streamed in June 2020.
Return the result table in any order.*/

select distinct title from Content c join TVProgram t
on c.content_id=t.content_id
where year(t.program_date)='2020' and month(t.program_date)='06' and kids_content='Y'

select distinct title from Content c join TVProgram t
on c.content_id=t.content_id
where date_format(t.program_date,'%Y%m')='202006'
 and kids_content='Y'

