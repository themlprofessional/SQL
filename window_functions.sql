-- Syntax
/*
select
from
where
group by
having
order by
limit
*/

create table emp (
EMPNO int,
ENAME varchar(255),
JOB varchar(255),
MGR int,
HIREDATE date,
SAL int,
COMM int,
DEPTNO int    
)

SET DATEFORMAT 'dmy'

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902, '17-12-80',800,null,20)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698, '20-02-81',1600,300,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698, '22-02-81',1250,500,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839, '02-04-81',2975,null,20)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698, '28-09-81',1250,1400,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839, '01-05-81',2850,null,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839, '09-06-81',2450,null,10)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,'SCOTT','ANALYST',7566, '09-12-82',3000,null,20)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null, '17-11-81',5000,null,10)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698, '08-09-81',1500,null,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,'ADAMS','CLERK',7788, '12-01-83',1100,null,20)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698, '03-12-81',950,null,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698, '03-12-81',950,null,30)

Insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782, '23-01-82',1300,null,10)

select * from emp;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table moons(
    planet_name varchar(20),
    name varchar(20) primary key, 
    radius float
) ;

insert into moons values ('Earth','Moon',1737.1);

insert into moons values ('Eris','Dysnomia',342);

insert into moons values ('Haumea','Hi?iaka',195);

insert into moons values ('Haumea','Namaka',100);

insert into moons values ('Jupiter','Adrastea',8.2 );

insert into moons values ('Jupiter','Aitne',1.5);

insert into moons values ('Jupiter','Amalthea',83.45 );

insert into moons values ('Jupiter','Ananke',14);

insert into moons values ('Jupiter','Aoede',2);

insert into moons values ('Jupiter','Arche',1.5);

insert into moons values ('Jupiter','Autonoe',2);

insert into moons values ('Jupiter','Callirrhoe',4.3);

insert into moons values ('Jupiter','Callisto',2408.4 );

insert into moons values ('Jupiter','Carme',23);

insert into moons values ('Jupiter','Carpo',1.5);

insert into moons values ('Jupiter','Chaldene',1.9);

insert into moons values ('Jupiter','Cyllene',1);

create table planets( 
name varchar(20) primary key
);

insert into planets values ('Earth');

insert into planets values ('Eris');

insert into planets values ('Haumea');

insert into planets values ('Jupiter');

insert into planets values ('Mars');

insert into planets values ('Neptune');

insert into planets values ('Pluto');

insert into planets values ('Saturn');

insert into planets values ('Uranus');

insert into planets values ('Venus');

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table water( 
name varchar(30) primary key,
type varchar(10),
square_km int );

insert into water(name,type,square_km) values ('Pacific Ocean','Ocean',155557000)
insert into water(name,type,square_km) values ('Atlantic Ocean','Ocean',76762000)
insert into water(name,type,square_km) values ('Indian Ocean','Ocean',68556000)
insert into water(name,type,square_km) values ('Southern Ocean','Ocean',20327000)
insert into water(name,type,square_km) values ('Arctic Ocean','Ocean',14056000)
insert into water(name,type,square_km) values ('Mediterranean Sea','Sea',2965800)
insert into water(name,type,square_km) values ('Caribbean Sea','Sea',2718200)
insert into water(name,type,square_km) values ('South China Sea','Sea',2319000)
insert into water(name,type,square_km) values ('Bering Sea','Sea',2291900)
insert into water(name,type,square_km) values ('Gulf of Mexico','Gulf',1592800)
insert into water(name,type,square_km) values ('Okhotsk Sea','Sea',1589700)
insert into water(name,type,square_km) values ('East China Sea','Sea',1249200)
insert into water(name,type,square_km) values ('Hudson Bay','Bay',1232300)
insert into water(name,type,square_km) values ('Japan Sea','Sea',1007800)
insert into water(name,type,square_km) values ('Andaman Sea','Sea',797700)
insert into water(name,type,square_km) values ('North Sea','Sea',575200)
insert into water(name,type,square_km) values ('Red Sea','Sea',438000)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table tweets ( 
  dte date primary key,
  tweet_millions float
  )

insert into tweets values ('06-01-01',0.000001)
insert into tweets values ('06-02-01',0.000387)
insert into tweets values ('06-03-01',0.000773)
insert into tweets values ('06-04-01',0.00116)
insert into tweets values ('06-06-01',0.001932)
insert into tweets values ('06-07-01',0.002318)
insert into tweets values ('06-09-01',0.003091)
insert into tweets values ('06-10-01',0.003477)
insert into tweets values ('06-12-01',0.004249)
insert into tweets values ('07-01-01',0.005)
insert into tweets values ('07-02-01',0.027565)
insert into tweets values ('07-03-01',0.05013)
insert into tweets values ('07-04-01',0.072694)
insert into tweets values ('07-06-01',0.117824)
insert into tweets values ('07-07-01',0.140389)
insert into tweets values ('07-09-01',0.185518)
insert into tweets values ('07-10-01',0.208083)

select * from tweets
-------------------------------------------------------------------------------------------------------------------------------------------------
-- first_value() and last_value()
create table geekdemo( 
  name varchar(30),
  city varchar(10),
  year int
);

insert into geekdemo(name,city,year) values('Ankit', 'Delhi', 2019);
insert into geekdemo(name,city,year) values('Babita', 'Noida',2017);
insert into geekdemo(name,city,year) values('Chetan', 'Noida', 2018);
insert into geekdemo(name,city,year) values('Deepak', 'Delhi', 2018);
insert into geekdemo(name,city,year) values('Isha', 'Delhi', 2019);
insert into geekdemo(name,city,year) values('Khushi', 'Noida', 2019);
insert into geekdemo(name,city,year) values('Megha', 'Noida', 2017);
insert into geekdemo(name,city,year) values('Parul', 'Noida', 2017);

select * from geekdemo;

-----------------------------------

-- first_value()

-- first_value() without partition by
select top 1000 name, year,
first_value(city) over(order by city asc) as first_city from geekdemo;

-- first_value() with partition by
select top 100 name, year,
first_value(city) over(partition by year order by city asc) as first_city
from geekdemo;

-----------------------------------

-- last_value()

-- last_value() without partition by
select top 1000 name, year,
last_value(city) over(order by city asc) as last_city
from geekdemo;

-- last_value() with partition by
select top 100 name, year,
last_value(city) over(partition by year order by city asc) as last_city
from geekdemo;

-------------------------------------------------------------------------------------------------------------------------------------------------

-- Show me life expectancy throughout history in the UK compared to 5 years on either side
create table life_expectancy ( recorded_year date, age float )

insert into life_expectancy values ('1543-01-01',33.94)
insert into life_expectancy values ('1548-01-01',38.82)
insert into life_expectancy values ('1553-01-01',39.59)
insert into life_expectancy values ('1558-01-01',22.38)
insert into life_expectancy values ('1563-01-01',36.66)
insert into life_expectancy values ('1568-01-01',39.67)
insert into life_expectancy values ('1573-01-01',41.06)
insert into life_expectancy values ('1578-01-01',41.56)
insert into life_expectancy values ('1583-01-01',42.7)
insert into life_expectancy values ('1588-01-01',37.05)
insert into life_expectancy values ('1593-01-01',38.05)
insert into life_expectancy values ('1598-01-01',37.82)
insert into life_expectancy values ('1603-01-01',38.53)
insert into life_expectancy values ('1608-01-01',39.59)
insert into life_expectancy values ('1613-01-01',36.79)
insert into life_expectancy values ('1618-01-01',40.31)
insert into life_expectancy values ('1618-01-01',40.31)
insert into life_expectancy values ('1623-01-01',33.39)

select * from life_expectancy;

-----------------------------------

-- first_value and last_value functions
select recorded_year, age,
first_value(age)
over(
order by recorded_year
rows between 5 preceding and 5 following
)as fv,
last_value(age)
over(
partition by recorded_year
order by recorded_year
rows between 5 preceding and 5 following
) as lv
from life_expectancy;

-----------------------------------

-- LAG and LEAD functions
select recorded_year, age,
lag(age)
over(
order by recorded_year
)as fv,
lead(age)
over(
order by recorded_year
) as lv
from life_expectancy;

-----------------------------------

-- BETWEEN operator to select rows within a range of dates
SELECT *
FROM life_expectancy
WHERE recorded_year BETWEEN '1598-01-01' AND '1623-01-01';

---------------------------------

-- first_value()
SELECT recorded_year, age,
       FIRST_VALUE(age) OVER (PARTITION BY recorded_year ORDER BY age DESC) as oldest_age
FROM life_expectancy

-- last_value()
SELECT recorded_year, age,
       LAST_VALUE(age) OVER (PARTITION BY recorded_year ORDER BY age ASC) as youngest_age
FROM life_expectancy


------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- row_number()

-- Problem Statement: compare daily uber trips in new york city with 2nd lowest/Highest from July to September

create table trips ( trip_date date, trip_count int )

insert into trips values ('2014-07-01',21228)
insert into trips values ('2014-07-02',26480)
insert into trips values ('2014-07-03',21597)
insert into trips values ('2014-07-04',14148)
insert into trips values ('2014-07-05',10890)
insert into trips values ('2014-07-06',11443)
insert into trips values ('2014-07-07',18280)
insert into trips values ('2014-07-08',25763)
insert into trips values ('2014-07-09',27817)
insert into trips values ('2014-07-10',30541)
insert into trips values ('2014-07-11',28752)
insert into trips values ('2014-07-12',25936)
insert into trips values ('2014-07-13',21082)
insert into trips values ('2014-07-14',27350)

select * from trips

select * from
(
select trip_Date, trip_count,
row_number()
over(
order by trip_count
)as second_lowest
from trips
) a
where second_lowest = 2

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table external_emp (
SEQ int,
EMPNO int,
ENAME VARCHAR(10),
JOB VARCHAR(9),
MGR int,
HIREDATE DATE,
SAL int,
COMM int,
DEPTNO int
)

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (1,7782,'CLARK','MANAGER',7839, '1981-06-09',2450,null,10);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (2,7839,'KING','PRESIDENT',null, '1981-11-17',5000,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (3,7934,'MILLER','CLERK',7782, '1982-01-23',1300,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (4,7369,'SMITH','CLERK',7902, '1980-12-17',800,null,20);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (5,7876,'ADAMS','CLERK',7788, '1983-01-12',1100,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (6,7902,'FORD','ANALYST',7566, '1981-12-03',3000,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (6,7902,'FORD','ANALYST',7566, '1981-12-03',3000,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (8,7788,'SCOTT','ANALYST',7566, '1982-12-09',3000,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (9,7499,'ALLEN','SALESMAN',7698, '1981-02-20',1600,300,30);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (10,7521,'WARD','SALESMAN',7698, '1981-02-22',1250,500,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (11,7654,'MARTIN','SALESMAN',7698, '1981-09-28',1250,1400,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (12,7698,'BLAKE','MANAGER',7839, '1981-05-01',2850,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (13,7844,'TURNER','SALESMAN',7698, '1981-09-08',1500,null,null);

insert into external_emp (SEQ,EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (14,7900,'JAMES','CLERK',7698, '1981-12-03',950,null,null);

select * from external_emp

select dept, count(dept) as dept_count
from (
select empno, ename, job, hiredate, sal, deptno,
last_value(deptno) ignore nulls over(order by seq) as dept
from external_emp
) a
group by dept
order by dept;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table sale(
    id int,
    seller_name varchar(30),
    sale_value int );

insert into sale(id, seller_name, sale_value) values (3, 'Stef', 7000)
insert into sale(id, seller_name, sale_value) values (1, 'Alice', 12000)
insert into sale(id, seller_name, sale_value) values (2, 'Mili', 12000)

-- lag() function will provide the data of one row above
-- lead() function will provide the data of one row below

select seller_name, sale_value,
lag(sale_value) over (order by sale_value) as previous_sale_value
from sale;


create table ORDERS(
	order_id int,
  	status_date date,
  	status varchar(20)
)

insert into ORDERS values (11700, '03-01-2016', 'New')
insert into ORDERS values (11700, '04-01-2016', 'Inventory Check')
insert into ORDERS values (11700, '05-01-2016', 'Inventory Check')
insert into ORDERS values (11700, '06-01-2016', 'Inventory Check')
insert into ORDERS values (11700, '07-01-2016', 'Inventory Check')
insert into ORDERS values (11700, '08-01-2016', 'Inventory Check')
insert into ORDERS values (11700, '09-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '10-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '11-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '12-01-2016', 'In Warehouse')
insert into ORDERS values (11700, '13-01-2016', 'In Warehouse')
insert into ORDERS values (11700, '14-01-2016', 'In Warehouse')
insert into ORDERS values (11700, '15-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '16-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '17-01-2016', 'Payment Pending')
insert into ORDERS values (11700, '18-01-2016', 'Payment Pending')
insert into ORDERS values (11700, '19-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '20-01-2016', 'Awaiting Signoff')
insert into ORDERS values (11700, '21-01-2016', 'Delivery')
insert into ORDERS values (11700, '22-01-2016', 'Delivery')


-- Problem statement: Only show the dates when the status of the order changed for that particular order. remove the remaining data.
select order_id, status_date,lead_status,status,
lag(status_date)
over(partition by order_id order by status_date ) from_date,
status_date to_date
from
(select 
    order_id,
    status_date,
    status,
    lag(status) over (partition by order_id order by status_date) lag_status,
    lead(status) over (partition by order_id order by status_date) lead_status
  from ORDERS)a
  
where lag_status is null
       or lead_status is null
       or lead_status != status
  order by order_id, from_date;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*

cume_dist() - It returns the result of current row divided by total number of rows

percent_rank() - Within the current partition it will choose the highest and lowest values and rank other values based on that

ntile() - It decides a set of records into specified no. of groups

*/

create table movies 
  ( year_of_release int,
    name varchar(60),
    gross_sales bigint
  );

insert into movies (year_of_release,name,gross_sales) values (2009,'avatar',2783918982);
insert into movies (year_of_release,name,gross_sales) values (1997,'titanic',2207615668);
insert into movies (year_of_release,name,gross_sales) values (2015,'jurassic world',1666248032);
insert into movies (year_of_release,name,gross_sales) values (2012,'the avengers',1519479547);
insert into movies (year_of_release,name,gross_sales) values (2015,'furious 7',1515993181);
insert into movies (year_of_release,name,gross_sales) values (2015,'the avengers: age of ultron',1404705868);
insert into movies (year_of_release,name,gross_sales) values (2011,'harry potter and the deathly hallows: part ii',1341511219);
insert into movies (year_of_release,name,gross_sales) values (2013,'frozen',1274234980);
insert into movies (year_of_release,name,gross_sales) values (2013,'iron man 3',1215392272);
insert into movies (year_of_release,name,gross_sales) values (2015,'minions',1163530631);
insert into movies (year_of_release,name,gross_sales) values (2003,'the lord of the rings: the return of the king',1141408667);
insert into movies (year_of_release,name,gross_sales) values (2011,'transformers: dark of the moon',1123790543);
insert into movies (year_of_release,name,gross_sales) values (2012,'skyfall',1110526981);
insert into movies (year_of_release,name,gross_sales) values (2014,'transformers: age of extinction',1104039076);
insert into movies (year_of_release,name,gross_sales) values (2012,'the dark knight rises',1084439099);
insert into movies (year_of_release,name,gross_sales) values (2010,'toy story 3',1069818229);
insert into movies (year_of_release,name,gross_sales) values (2006,'pirates of the caribbean: dead man''s chest',1066215812);


select * from movies

--  Show me distributions of Hollywood movie box office sales using PERCENT_RANK, CUME_DIST, and NTILE (quartile, decile, tertile, etc)

select name, gross_sales, 
percent_rank() over(order by gross_sales) as pct,
cume_dist() over(order by gross_sales) as cum_dist,
ntile(4) over(order by gross_sales) as ntil from movies;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------








































-- PARTITION BY

-- ORDER BY

-- ROWS or RANGE clause

-- 1. AVG(), SUM()

-- 2. AVG(), SUM(), COUNT(), MAX(), MIN()

-- 3. ROW_NUMBER()

-- ROW_NUMBER() (Top Five)

-- ROW_NUMBER(), RANK(), DENSE_RANK()

-- 6. NTILE()

-- 7. PERCENT_RANK(), CUME_DIST()

-- 8. LAG(), LEAD()

-- 9. PARTITION BY (RUNNING TOTAL)

-- um, avg, min, max, lead, lag, row_no, rank, dense_rank, ntile

-- running total

-- range between unbounded preceding and unbounded following, current_row
-- https://stevestedman.com/2013/04/rows-and-range-preceding-and-following/

-- dense_rank 

---------------------------------------------------------------
-- row_number()
-- rank()
-- dense_rank()
-- percent_rank()
-- cume_dist()
-- lead()
-- lag()
-- ntile()
-- first_value()
-- last_value()
-- nth_value()
-- avg()
-- count()
-- min()
-- max()
-- sum()