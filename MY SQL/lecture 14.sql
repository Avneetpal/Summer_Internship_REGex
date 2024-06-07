use sakila;
-- views 
-- virtual table
--  view ---- >  not  physically
select * from payment;

 create view V_payment as select payment_id ,customer_id from payment;
 
 select * from v_payment;
 create table raj123(id int , salary int);
 insert into raj123 values(1,200),(2,300);
 create view v_raj as select id from raj123;
 select * from v_raj;
 insert into v_raj value(300);
 select * from raj123;                                   
 
 create or replace view v_raj as select sum(salary) from raj123;
 select * from v_raj;

-- index in SQL
-- use to access data faster
-- types  of indes
-- clustered index == created automatically
-- non clustered index == we create these index

create database test;
use test;
create table regex(id int primary key auto_increment, name varchar(20), salary int);
insert into regex values(3,'avneet',10),(4,'pal',80);
desc regex;
commit;
show indexes from regex;
explain select id from regex;
explain select * from regex where salary  =20;

create index regex_c on regex(name ,salary);
explain select * from regex where salary =100;


