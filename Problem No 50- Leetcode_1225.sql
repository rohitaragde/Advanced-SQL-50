-----------------------------  Leetcode 1225 ---------------------------------------
-------------------------- Report Contiguous Dates ----------------------------

create table Failed
(fail_date date primary key)

create table Succeeded
(success_date date primary key)


insert into Failed values('2018-12-28')
insert into Failed values('2018-12-29')
insert into Failed values('2019-01-04')
insert into Failed values('2019-01-05')

insert into Succeeded values('2018-12-30')
insert into Succeeded values('2018-12-31')
insert into Succeeded values('2019-01-01')
insert into Succeeded values('2019-01-02')
insert into Succeeded values('2019-01-03')
insert into Succeeded values('2019-01-06')

/* 
Write a solution to report the period_state for each continuous
interval of days in the period from 2019-01-01 to 2019-12-31.
period_state is 'failed' if tasks in this interval failed or 'succeeded' 
if tasks in this interval succeeded. Interval of days are 
retrieved as start_date and end_date.
Return the result table ordered by start_date
*/

select * from Failed
select * from Succeeded

with union_cte as
(
select fail_date as date,
       'failed' as status
from failed 
where fail_date between '2019-01-01' and '2019-12-31'
union all
select success_date as date,
       'succeeded' as status
from Succeeded
where success_date between '2019-01-01' and '2019-12-31'
),

rn_cte as
(
select *,
(ROW_NUMBER() over(order by date))-(ROW_NUMBER() over(partition by status order by date)) as group_id
from union_cte 
)

select status as period_state,
min(date) as start_date,
max(date) as end_date
from rn_cte 
group by status, group_id 
order by start_date










