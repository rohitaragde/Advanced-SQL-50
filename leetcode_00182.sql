-------------------------- Leetcode 00182 --------------------------------
--------------------- Duplicate Emails ----------------------------

create table Person11
(id int primary key,
 email varchar(12))

insert into Person11 values(1,'a@b.com')
insert into Person11 values(2,'c@b.com')
insert into Person11 values(3,'a@b.com')


/*Write a solution to report all the duplicate emails.
 Note that it's guaranteed that the email field is not NULL.*/

Return the result table in any order.

select * from Person11

select email from Person11
group by email
having count(*)>1






