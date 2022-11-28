-- Triggers - A Trigger is a special procedure because it cannot be called directly like a stored procedure
-- Triggers runs based on the 3 concepts of SQL i.e. (insert, update and delete)

-- Create Employee Table
create table employeeT
(
    id int primary key,
    name varchar(45),
    salary int,
    gender varchar(12),
    departmentID int
)

-- Insert Into Emloyee Table
insert into employeeT values
(1, 'Employee1', 8200, 'M', 3),
(2, 'Employee2', 5200, 'F', 2),
(3, 'Employee3', 25000, 'M', 1),
(4, 'Employee4', 47000, 'M', 2),
(5, 'Employee5', 46000, 'F', 3)

-- Check Data
select * from employeeT;

-- Create Audit Table
create table Employee_Audit_Test (
    id int identity,
    audit_action text,
)

go

-- Create Triggers
create trigger trInsertEmployee
on employeeT
for insert
as
begin
    declare @id int
    select @id = id from inserted
    insert into Employee_Audit_Test
    values ('New employee with id = ' + cast(@id as varchar(10)) + 'is added at' + cast(getdate() as varchar(22)))
end

-- Insert data into emloyeeT
insert into employeeT values (6, 'Employee6', 6200, 'M', 3)

-- check the data
select * from EmployeeT
select * from Employee_Audit_Test


drop table employeeT
drop table Employee_Audit_Test
drop trigger trInsertEmployee