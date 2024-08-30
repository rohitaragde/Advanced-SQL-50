------------------------ Leetcode 01173 --------------------------------------

------------------------- Food Delivery I ------------------------------


create table Delivery
(delivery_id int primary key,
 customer_id int,
 order_date date,
 customer_pref_delivery_date date)

insert into Delivery values(1,1,'2019-08-01','2019-08-02')
insert into Delivery values(2,5,'2019-08-02','2019-08-02')
insert into Delivery values(3,1,'2019-08-11','2019-08-11')
insert into Delivery values(4,3,'2019-08-24','2019-08-26')
insert into Delivery values(5,4,'2019-08-21','2019-08-22')
insert into Delivery values(6,2,'2019-08-11','2019-08-13')

select * from Delivery

/*If the customer's preferred delivery date is the same as the order date,
then the order is called immediate; otherwise, it is called scheduled.
Write a solution to find the percentage of immediate orders in the table, 
rounded to 2 decimal places.
*/

SELECT
    ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.00 / COUNT(*), 2) AS immediate_percentage
FROM 
    Delivery;
