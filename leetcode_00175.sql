------------------------------- Leetcode 00175 ----------------------------------------

create table Person
(personid int primary key,
 lastname varchar(10),
 firstname varchar(10))

 create table Address1
 (addressid int primary key,
  personid int,
  city varchar(20),
  state varchar(12))

  insert into Person values(1,'Wang','Allen')
  insert into Person values(2,'Alice','Bob')

  insert into Address1 values(1,2,'New York City','New York')
  insert into Address1 values(2,3,'Leetcode','California')

  select * from Person 

  select * from Address1

  /*Write a solution to report the first name,
  last name, city, and state of each person 
  in the Person table. If the address of a personId 
  is not present in the Address table, report null instead.
Return the result table in any order.*/

select p.firstname,p.lastname,a.city,a.state
from Person p left join Address1 a
on p.personid=a.personid



