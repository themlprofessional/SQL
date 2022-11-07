select * from EmployeeDemographics
full outer join WareHouseEmployeeDemographics on
EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID;


-- when we try to combine two tables having similar column name using joins, it wouldn't work because we cannot get joined values in a same column.
-- that's where a union comes into play.

-- union takes out all duplicates, it's kinda like a distinct statment.
select * from EmployeeDemographics
union
select * from WareHouseEmployeeDemographics;

-- union all shows all values regardless whether duplicate or not.
select * from EmployeeDemographics
union all
select * from WareHouseEmployeeDemographics
order by EmployeeID;


-- Union doesn't work when you are trying out for tables having diferent column names.
-- Make sure that the data you are selecting is the same.
select EmployeeID, FirstName, Age from EmployeeDemographics
union
select EmployeeID, JobTitle, Salary from EmployeeSalary
order by EmployeeID;