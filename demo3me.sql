--DDL[Data Definition Language] [comments: create, alter, drop, use,truncate]
--CREATE
create database Proj
use proj
create table emp
( 
Eid int,
ename varchar(max),
esalalry varchar(max),
egender char(10),
edept varchar(25)
)
insert into emp values
(1,'Jack',40000,'male','it'),
(2,'Rathi', 45000,'female','sales'),
(3,'Ritha',50000,'female','finance'),
(4,'Ben',37000,'male','finance'),
(5,'Darani',48000,'female','it'),
(6,'Alex',35000,'male','sales'),
(7,'moni',49000,'female','it')
select * from emp

--Alter [remove column, add new column, modify datatype, modify database]
alter table emp
drop column egender
alter table emp
add egender char(7)
alter table emp
alter column esalalry int
alter database prog
modify name = proj

--Drop [remove column and table and database]
drop table dbo.hr
alter table emp
drop column egender
use proj
drop database deva

--Truncate (remove all records)
truncate table emp
select * from emp

--******************************************************************

--DML (Data Manipulation Language) [comments: Select,Insert,Update,Delete]

use proj
create table menu_items
( item_id int,
name varchar(max),
is_veg char(3),
avg_price decimal(5,2))

--Insert
insert into menu_items values
(12947239, 'Spaghetti', 'no',10.50),
(49273623,'Steak','no',15.00),
(40238274,'Eggplant parm','yes',9.50),
(371743817, 'Mac and Cheese','yes',6.50),
(3718373,'Chicken','no',10.30)

--Select
select * from  menu_items
select is_veg, name, avg_price from menu_items

--Update
update menu_items
set name ='salad'
where item_id = 12947239 

update menu_items
set is_veg='yes' 
where item_id=49273623 

-- Delete (Delete Single or Multiple records) 
select * from emp
delete from emp
where eid=6

delete from emp
where eid in(5,4,3)

delete from emp

--NOTE:(change names)
--Change Column Name
exec sp_rename 'emp.egender', 'egen', 'column'

--Change Table Name
exec sp_rename 'emp', 'employee'

--*************************************************************************
--#########################################################################
--****************************************************************************















































