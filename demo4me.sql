create database deva
go
use deva
go
create table fill
( id int, name varchar(max), gender char(6),age tinyint, total_marks smallint)
go
insert into fill values
(1,'Jolly Evans','Female',20,520),
(2,'Josh Butler','Male',22,645),
(3,'Rose','Female',25,610),
(4,'Laura','Female',18,430),
(5,'Alan Simmons','male',20,500),
(6,'Kate','Female',22,600),
(7,'Joseph','Male',20,643),
(8,'Antonio','Male',23,513),
(9,'Diego','Male',21,699),
(10,'Elis','Female',27,540)
select* from fill

---FILTER
--Equal:
select * from fill
where id=3

--Not equal 
select *from fill
where id !=5

select *from fill
where id<>8

--Greater and Greater than or equal:
select *from fill
where id>5

select *from fill
where id >= 3

--Less and Less than or equal:
select *from fill
where id<5

select *from fill
where id <= 3

--And
select *from fill
where id=4 and name='Laura'  --(True)

select *from fill
where id=1 and gender='male' and age=20  --(False)

select *from fill
where gender='female' and id=3  --(True)

--Or
select *from fill
where gender='female' or id=2 

--And / Or
select *from fill
where gender='female' and id=3 or age=20

select *from fill
where id>=3 and gender='female' or Total_marks=500

-- In
select *from fill
where gender in ('male','female')

select *from fill
where id in (3,5,7,10)

select *from fill
where age in ( 20,22,7,8,30)

--Not in
select *from fill
where gender not in ('female') 

select *from fill
where id not in (3,5,7,10)

select *from fill
where age not in (20,22,7,8,30)

--Where between Value 1 and Value 2

select *from fill
where id between 1 and  5


select *from fill
where age between 20 and 25 

select *from fill
where total_marks between 500 and 600

SELECT * FROM fill
where  total_marks between 500 and 700 and total_marks <600

SELECT * FROM fill
where name between 'a' and 'H'

--Where like%
SELECT * FROM fill
where total_marks like '%10' (--ending with __10)

SELECT * FROM fill
where name like '%a' (--ending with __a)

SELECT * FROM fill
where name like '%er' (--ending with __er)

SELECT * FROM fill
where name like '%e%' (--all position 'e'used names are shown)

SELECT * FROM fill
where name like 'e%'  (--starting with e___)

SELECT * FROM fill
where name like '_i%'

SELECT * FROM fill
where name like '%_e'

SELECT * FROM fill
where name like '____' (--exactly 4 letter names are shown)

SELECT * FROM fill
where name like 'a%_'

--Order By (asc/desc):
select *from fill
order by name asc

select *from fill
order by id desc

select *from fill
order by age asc, name desc

--***************************************************************
INSERT INTO fill  VALUES
  (NULL, 'Dave', '', 30, 700)

INSERT INTO fill  VALUES
  (NULL, 'NULL', NULL, NULL, NULL)
-------------------------------------

--Null / is not Null:
select * from fill 
where id is NULL

select * from fill 
where name ='NULL'

select * from fill 
where id is not NULL































































































