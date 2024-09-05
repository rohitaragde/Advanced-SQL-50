------------------------------ Leetcode 1440 ---------------------------------------------

------------------------ Evaluate Boolean Expression ---------------------------------

use rohit;

create table Variables
(nname varchar(10) primary key,
 value int)

 create table Expressions
 (left_operand varchar(10),
  operator enum('<','>','='),
  right_operand varchar(10),
  primary key( left_operand,operator,right_operand))


insert into Variables values('x',66)
insert into Variables values('y',77)



insert into Expressions (left_operand, operator, right_operand) values ('x', '>', 'y');
insert into Expressions (left_operand, operator, right_operand) values ('x', '<', 'y');
insert into Expressions (left_operand, operator, right_operand) values ('x', '=', 'y');
insert into Expressions (left_operand, operator, right_operand) values ('y', '>', 'x');
insert into Expressions (left_operand, operator, right_operand) values ('y', '<', 'x');
insert into Expressions (left_operand, operator, right_operand) values ('y', '=', 'x');

  
  select * from Variables
  
  select * from Expressions
  
  /*
  Evaluate the boolean expressions in Expressions table.
Return the result table in any order.
  */
  
  select e.left_operand,e.operator,e.right_operand,
		case when e.operator='<' and v1.value<v2.value then 'TRUE'
             when  e.operator='>' and v1.value>v2.value then 'TRUE'
             when  e.operator='=' and v1.value=v2.value then 'TRUE'
		else 'FALSE'
        end as value
        from Expressions e join Variables v1
         on e.left_operand=v1.nname 
         join Variables v2
         on e.right_operand=v2.nname
         

 
  






  
  
  
 
  
  
  
  
  
  
  
  
