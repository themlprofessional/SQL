-- NOT NULL - Ensures that a column cannot have a NULL value
-- UNIQUE - Ensures that all values in a column are different
-- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table. A table can have only a single primary key.
-- FOREIGN KEY - Prevents actions that would destroy links between tables
-- CHECK - Ensures that the values in a column satisfies a specific condition
-- DEFAULT - Sets a default value for a column if no value is specified
-- CREATE INDEX - Used to create and retrieve data from the database very quickly

create database constdb;

use constdb;

create table employee (
    ID int,
    EmpName varchar(255),
    City varchar(255),
    Salary int
);

insert into employee(ID, EmpName, City, Salary)
values ('1', 'Tom', 'ABC', '7000');
insert into employee(ID, EmpName, City, Salary)
values ('2', 'Emma', 'PQR', '8000');


-- CHECK constraint

create table employee1 (
    ID int,
    EmpName varchar(255),
    City varchar(255),
    Salary  check (Salary < 10000)
);

insert into employee1(ID, EmpName, City, Salary)
values ('1', 'Tom', 'ABC', '7000');
insert into employee1(ID, EmpName, City, Salary)
values ('2', 'Emma', 'PQR', '8000');

select * from employee1;

-- this will throw an error
insert into employee1(ID, EmpName, City, Salary)
values ('3', 'Will', 'QUY', '11000');

/*
insert into employee1(ID, EmpName, City, Salary)
values ('3', 'Will', 'QUY', '5500');
*/


-- UNIQUE constraint
create table employee2 (
    ID int not null unique,
    EmpName varchar(255) not null,
    City varchar(255),
    Salary int
);

insert into employee2(ID, EmpName, City, Salary)
values ('1', 'Tom', 'ABC', '7000');

select * from employee2;

insert into employee2(ID, EmpName, City, Salary)
values ('2', 'Emma', 'XYZ', '5000');

insert into employee2(ID, EmpName, City, Salary)
values ('3', 'Tom', 'PQR', '6000');

insert into employee2(ID, EmpName, City, Salary)
values ('4', 'Will', 'AQR', '8500');

-- this will throw an error
insert into employee2(ID, EmpName, City, Salary)
values ('3', 'Gary', 'QUH', '7200')

-- insert into employee2(ID, EmpName, City, Salary)
-- values ('5', 'Gary', 'QUH', '7200')

select * from employee2


-- PRIMARY KEY constraint
create table employee3 (
    ID int not null primary key,
    EmpName varchar(255),
    City varchar(255),
    Salary int
);

insert into employee3(ID, EmpName, City, Salary)
values ('1', 'Tom', 'ABC', '7000');
insert into employee3(ID, EmpName, City, Salary)
values ('2', 'Emma', 'PQR', '8000');

select * from employee3;


-- FOREIGN KEY constraint
-- A FOREIGN KEY is a field in one table referring to the PRIMARY KEY in anothet table.
-- Child table: The table with the foreign key
-- Parent Table: The table with the primary key

-- Foreign key is used to prevent invalid data from being inserted into the foreign key columns
-- Invalid data wont be able to come into the foreign key column, because child table is related to the parent table.  

create table employee4 (
    EmpID int not null primary key,
    EmpName varchar(255),
    EmpCity varchar(255),
    Salary int
);

create table department4(
    DeptID int not null primary key,
    DeptName varchar(255) not null,
    EmpID int foreign key references employee(EmpID)
)

-- The "EmpID" column in the "Employee" table is the PRIMARY KEY in the "Employee" table.
-- The "EmpID" column in the "Department" table is a FOREIGN KEY in the "Department" table.


-- DEFAULT INDEX constaint
-- It is used to provide default value for a column
-- The default value gets added to all the new records if no other value is specified by the user
create table employee5 (
    EmpID int not null,
    FirstName varchar(255),
    LastName varchar(255),
    EmpDept varchar(255) default 'Operations'
)

insert into employee5 (EmpID, FirstName, LastName)
values(1, 'Emma', 'Stone');

select * from employee5;


-- NOT NULL constaint
-- It is used to ensure that a column cannot have a NULL value
create table employee6 (
    EmpID int not null,
    FirstName varchar(255),
    LastName varchar(255),
    EmpAge int
)

-- this will throw an error
insert into employee6(EmpID, FirstName, LastName, EmpAge)
values (NULL, 'Jack', 'Sparrow', 25);

insert into employee6(EmpID, FirstName, LastName, EmpAge)
values (1, 'Jack', 'Sparrow', 25);

select * from employee6;


-- create index constaint

-- create index -> Creates indexes in database tables.

-- Reason - Index can help to speed up the retrieval of data

-- Syntax
create index index_name
on table_name (column1, column2, ...);

create index patient_names_ages
on patients (name, age);

-- NOTE:
-- With indexes, table updates take more time.
-- Because the table and the indexes need to be updated

-- delete index
drop index patient_names_ages
-- or
alter table employee
drop index name_index

-- create index using alter command
alter table employee
add index(ename);

-- show current inces
show index from employee;