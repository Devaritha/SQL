use deva
CREATE TABLE Department
  (
      did INT,
      ename VARCHAR(50) ,
      gender VARCHAR(50) ,
      salary INT ,
      dept VARCHAR(50) 
   )

   go
    INSERT INTO Department  VALUES
  (1, 'David', 'Male', 5000, 'Sales'),
  (5, 'Shane', 'Female', 5500, 'Finance'),
  (6, 'Shed', 'Male', 8000, 'Sales'),
  (7, 'Vik', 'Male', 7200, 'HR'),
  (2, 'Jim', 'Female', 6000, 'HR'),
  (13, 'Julie', 'Female', 7100, 'IT'),
  (14, 'Elice', 'Female', 6800,'Marketing'),
  (3, 'Kate', 'Female', 7500, 'IT'),
  (4, 'Will', 'Male', 6500, 'Marketing'),
  (10, 'Laura', 'Female', 6300, 'Finance'),
  (11, 'Mac', 'Male', 5700, 'Sales'),
  (12, 'Pat', 'Male', 7000, 'HR'),
  (8, 'Vince', 'Female', 6600, 'IT'),
  (9, 'Jane', 'Female', 5400, 'Marketing'),
  (15, 'Wayne', 'Male', 6800, 'Finance')

  INSERT INTO Department  VALUES
  (16, NULL, NULL, 5000, 'Sales'),
  (NUll, 'Shane', Null, 5500, 'Finance'),
  (Null, Null, Null, Null, Null)
  
select * from department

--Aggregate Function [Count, Max, Min, Avg, Sum]

--COUNT:
select count(*) from department [--output=18]

select count(did) from department [--output=16, exclude nall value]

select count(ename) from department

--MAX:
select max(did) from department

select max(ename) from department

select max(salary) from department

--Subquery:
select *from department
where salary = (select max(salary) from department)

select *from department
where salary in (5000,5500,8000,7000,5)

select *from department
where salary in (select salary from department)

--Min
select min(salary) from department
select min (ename) from department

--Avg
select avg(salary) as avg_sal from department

--NOTE:
select 
count(*) as counts,
max(salary) as max_sal,
min(salary) as min_sal,
avg(salary) as avg_sal,
sum(salary) as sum_sal
from department

--GROUP BY HAVING: [Having only used with Group by]
select dept from department
group by dept

select dept,
count(*) as counts
from department
group by dept

select dept, gender,
count(*) as counts,
sum(salary) as sum_sal
from department
group by dept, gender

select dept,
count(*) as counts
from department
where dept is not null
group by dept
having count(*)>=4

--Top Number:
select top 10 * from department

select top 10 ename, gender from department
select *from department

--NOTE: [FIND Second highest Salary]
select top 1 *from department
where salary != (select max(salary) from department)
order by salary desc

--Offset(Skip the rows) [TOP not used with offset]
select*from department
order by ename asc
offset 18 rows
fetch next 2 rows only

--NOTE:[Object Definition][table definition]
--sp_help table_name
sp_help department

--*************************************************************************
--########################################################################
--*************************************************************************


































































































