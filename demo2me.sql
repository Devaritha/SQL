create database study
use study
--tinyint(0 to 255)  (1Byte)
declare @t1 tinyint =255
select @t1 as largeNumber,  DATALENGTH (@t1) as Byte
declare @t2 tinyint
set @t2 = 0
select @t2 as smallNumber,     DATALENGTH(@t2) as Byte

--smallint (-32768 to 32767)   (2Byte)
declare @s1 smallint =32767
select @s1 as LargeNumber, DATALENGTH(@s1) as Byte
declare @s2 smallint =-32768
select @s2 as SmallNumber, DATALENGTH(@s2) as Byte

--int (-2,147,483,648 to 2,147,483,647)   (4Byte)
declare @i1 int
set @i1=2147483647
print @i1 
select @i1 as LargeNumber, DATALENGTH(@i1) as Byte
declare @i2 int=-2147483648
select @i2 as SmallNumber, DATALENGTH(@i2) as Byte

--bigint (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)   (8Byte)
--(Nine quintillion two hundred twenty-three quadrillion three hundred seventy-two trillion thirty-six billion 
-- eight hundred fifty-four million seven hundred seventy-five thousand eight hundred eight.)
declare @b1 bigint=9223372036854775807 
select @b1 as LargeNumber, DATALENGTH(@b1) as Byte
declare @b2 bigint = -9223372036854775808
select @b2 as SmallNumber, DATALENGTH(@b2) as Byte

--float (max 15 digits -- 8Byte)
declare @f1 float = 1234561234.34589
select @f1 as Number1, DATALENGTH(@f1) as Byte

--Decimal 
--Precision	Storage bytes
	--1 - 9		5
	--10-19		9
	--20-28		13
	--29-38		17
declare @d1 decimal(15,4)= 123342.789
select @d1 as DecNumber, DATALENGTH(@d1) as Byte

--NOTE: --Text/ string /date time  should be stored within ''
--Char
	--range (1-8000)
	--1 byte each character
	--Fixed data length
declare @c1 char(50) = 'Bibin chandra'
select @c1 as charNumber, DATALENGTH(@c1) as Byte
declare @c2 char(20) = '20/11/2023'
select @c2 as charNumber, DATALENGTH(@c2) as Byte
declare @c3 char(20)='@#$%^&*123455'
select @c3 as charNumber, DATALENGTH(@c3) as Byte

--varchar
--range (1-8000) OR YOU CAN USE (MAX)
--1 byte each character
--Varibale data length
declare @v1 varchar(50) = 'Bibin chandra'
select @v1 as charNumber, DATALENGTH(@v1) as Byte
declare @v2 varchar(20) = '20/11/2023'
select @v2 as charNumber, DATALENGTH(@v2) as Byte
declare @v3 varchar(20)='@#$%^&*123455'
select @v3 as charNumber, DATALENGTH(@v3) as Byte
declare @v4 varchar(max)
set @v4='@#$%^12345fdfnfnkd fsshhj'
select @v4 as charNumber, DATALENGTH(@v4) as Byte

--collation (rules )
--unicode

--nchar
--range (1-4000)
	--2 byte each character
	--Fixed data length
Declare @nc1 NChar(4000)
set @nc1='universe'
select  @nc1 as Ncnumber1, DATALENGTH(@nc1) as Byte

Declare @nc2 NChar(20)
set @nc2=N'Hello, 你好, مرحبا'
select  @nc2 as Ncnumber2, DATALENGTH(@nc2) as Byte

--nvarchar
--range (1-4000) OR YOU CAN USE (MAX)
--2 byte each character
--Varibale data length
Declare @nv1 NvarChar(4000)
set @nv1='universe'  
select  @nv1 as Ncnumber1, DATALENGTH(@nv1) as Byte

Declare @nv2 NvarChar(max)
set @nv2=N'Hello, 你好, مرحبا'
select  @nv2 as Ncnumber2, DATALENGTH(@nv2) as Byte

--Date   'YYYY-MM-DD' storage - 3 byte 
declare @date1 date='11-28-2023' --(month-date-year)
select @date1 as Date1, DATALENGTH(@date1) as Byte
Declare @date2 date
set @date2='2023-11-28'
select  @date2 as Date2, DATALENGTH(@date2) as Byte

--Time 'HH:MM:SS'  storage - 5 byte 
declare @time time = '03:33:55'
select @time as Time1, DATALENGTH(@time) as Byte

--datetime  storage - 8 byte 
declare @dt datetime = '2023-11-28 22:30:00'
select @dt as date_time, DATALENGTH(@dt) as Byte

--**************************************************************************
--##########################################################################
--**************************************************************************
































