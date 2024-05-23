-- lecture 4
use sakila;
show tables;
-- date time functioms
-- year(), month, quatar, weekofyear
select curdate() from dual;


select curtime() from dual;
select now() from dual; -- show current date and time
select adddate(now(),2) from dual;
select adddate(now(),interval 15 day) from dual;
select adddate(now(),interval 15 month) from dual;
select dayname(now()) from dual;
select date_format(now(),"%Y") from dual; -- show year
select date_format(now()," %M %Y") from dual;

-- numerical function
-- 1 round , truncate , mod
select round(10.6) from dual;
select round(10.4344,1) from dual;
select round(10.4344,2) from dual;

select truncate(10.6,1) from dual;
select truncate(10.6555,2) from dual;

select mod(10.6,1) from dual; -- gives remainder
select mod(10.6555,2) from dual; 


-- conditional functions
-- if
select * from actor;

select if(True,10,20) from dual; -- if(condition,if true , if false)
select actor_id,first_name,
if(actor_id=2,actor_id+10,actor_id) from  actor;

select actor_id,first_name,
if(actor_id=2,actor_id+10,
	if(actor_id=4,actor_id+20,actor_id))
		from  actor;

-- case statemnet
/*
select col,case expression/col
				when condition then what_type_work
                end 
                from table
*/
select actor_id , first_name ,
case actor_id
	when 2 then actor_id+10
    when 3 then actor_id+20
else actor_id
end "new col"
from actor;

-- ---------------------------------------------------------------
select actor_id , first_name ,
case 
	when actor_id= 2 then actor_id+10
    when actor_id=3 then actor_id+20
else actor_id
end "new col"
from actor;
-- if a person has actor id more then 5 add 10 if more then 15 add 25 if more then 35 add 50 otherwise add 10
select actor_id , first_name ,
case 

	when actor_id >=5 and actor_id<15 then actor_id+10
    when actor_id>=15 and  actor_id<35  then actor_id+25
     when actor_id>=35 and  actor_id<50  then actor_id+35
    
else actor_id+5
end "new col"
from actor


-- group by
-- difference between distinct and group by
-- difference between where and having clause
-- sql zoo questions

