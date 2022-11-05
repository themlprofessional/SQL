with CTE_Employee as (
    select FirstName, LastName, Gender, Salary,
    count(Gender) over (partition by Gender) as TotalGender,
    avg(Salary) over (partition by Salary) as AvgSalary
    from EmployeeDemographics emp
    join EmployeeSalary sal 
    on emp.EmployeeID = sal.EmployeeID 
    where Salary > 4500
)

select FirstName, AvgSalary from CTE_Employee;

-- Create Table EmployeeDemographics 
-- (EmployeeID int, 
-- FirstName varchar(50), 
-- LastName varchar(50), 
-- Age int, 
-- Gender varchar(50)
-- )

-- Create Table EmployeeSalary 
-- (EmployeeID int, 
-- JobTitle varchar(50), 
-- Salary int
-- )