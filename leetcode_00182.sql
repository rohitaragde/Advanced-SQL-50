-------------------------- Leetcode 00182 --------------------------------
--------------------- Duplicate Emails ----------------------------

create table Person11
(id int primary key,
 email varchar(12))

insert into Person11 values(1,'a@b.com')
insert into Person11 values(2,'c@b.com')
insert into Person11 values(3,'a@b.com')

select * from Person11

select email from Person11
group by email
having count(*)>1






