---------------------------------------- Leetcode 1445 -----------------------------------------------------------

    ----------------------------------- Apples and oranges -------------------------------------------
    
    use rohit;
    
    create table Sales1
    (sale_date date,
     fruit enum('apples','oranges'),
     sold_num int,
     primary key(sale_date,fruit))
     
     insert into Sales1 values('2020-05-01','apples',10)
	 insert into Sales1 values('2020-05-01','oranges',8)
	 insert into Sales1 values('2020-05-02','apples',15)
	 insert into Sales1 values('2020-05-02','oranges',15)
	 insert into Sales1 values('2020-05-03','apples',20)
	 insert into Sales1 values('2020-05-03','oranges',0)
	 insert into Sales1 values('2020-05-04','apples',15)
	 insert into Sales1 values('2020-05-04','oranges',16)
     
     /* Write a solution to report the difference between the number of apples and oranges sold each day.
Return the result table ordered by sale_date.*/
     
     select * from Sales1
     
select sale_date, sum(if( fruit='apples', sold_num, -sold_num)) as diff
from Sales1 group by 1 order by 1

     
     
   
     
     
     
     
     
     
     
     
     
     
     

