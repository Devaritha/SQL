--SQL Server index
use deva
create table clust
 (
      did INT,
      ename VARCHAR(50) ,
      gender VARCHAR(50) ,
      salary INT ,
      dept VARCHAR(50) 
   )


    INSERT INTO clust VALUES
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
  select*from clust

--Clustered Index (1) [Sort and Stored record]
--Create Clustered index INDEXNAME on TableNAME(ColumnNAME )
create clustered index CI_Ind on clust(did)

INSERT INTO clust  VALUES
  (31, 'David', 'Male', 5000, 'Sales'),
  (25, 'Shane', 'Female', 5500, 'Finance'),
  (36, 'Shed', 'Male', 8000, 'Sales'),
  (17, 'Vik', 'Male', 7200, 'HR')

--SCAN
    SELECT * FROM clust

--Seek
    SELECT * FROM clust        --(--search 1 record)
	where did=7 

	select*from clust          --(--search 1 record)
	where did=1 and salary=5000
	
	select*from clust          --(--search 1 record)
	where did=1 and salary!=5500

--Scan	
	select*from clust          --(--search 19 record read, 3 record shown)
	where did=1 or salary=5500 
	
	SELECT * FROM clust        --(--search 19 record read, 2 record shown)
	where ename='david'

--NON Clustered Index (999)
--Create  index INDEXNAME on TableNAME(ColumnNAME )

	Create  index CI_sal on clust(salary)
	Create  index CI_name on clust(ename)
	Create  index CI_gen on clust(gender)
	Create  index CI_dept on clust(dept)
--Seek
	SELECT salary FROM clust
	where salary>5500 

	SELECT gender FROM clust
	where gender='male'
	
	SELECT dept FROM clust
	where dept='it'

   SELECT ename FROM clust
	where ename='david'

--Composite Index [Combination of more than one column]

Create  index CI_Dept_gender on Department(dept,gender,salary)

SELECT dept, gender, salary FROM Department
where gender='Female' and  dept= 'IT'and salary>5000

--NOTE: Drop Cluster index
-- [drop index CI_DID on table_name]


--NOTE: [Disk usage by Table - storage amount(kb,mb,...)]
--[Database(deva) --> Reports --> Standard reports 
   --> Disk usage by table --> ] 


--Primary key(Unique + NOT NULL)
--Clustered Index automatically created
use deva
CREATE TABLE HR
  (
     Hid INT primary key,
      ename VARCHAR(50) ,
      gender VARCHAR(50) ,
      salary INT ,
      dept VARCHAR(50) 
   )

    INSERT INTO HR VALUES
  (1, 'David', 'Male', 5000, 'Sales'),
  (5, 'Shane', 'Female', 5500, 'Finance'),
  (6, 'Shed', 'Male', 8000, 'Sales'),
  (7, 'Vik', 'Male', 7200, 'HR'),
  (2, 'Jim', 'Female', 6000, 'HR'),
  (13, 'Julie', 'Female', 7100, 'IT'),
  (14, 'Elice', 'Female', 6800,'Marketing'),
  (3, 'Kate', 'Female', 7500, 'IT'),
  (4, 'Will', 'Male', 6500, 'Marketing')
  insert into hr values
  (null, 'null', 'Male', null, 'Marketing')
SELECT * FROM HR

create  index CI_DID on hr(salary)
SELECT * FROM HR
	where hid =3
SELECT salary FROM HR
	where salary=7100

--NOT NUll  Unique 
	alter table dept 
	alter column did int not null

	alter table dept 
	add constraint pk_did primary key (did)
  --add constraint COnstraint Name  primary key (COlumn name )






















