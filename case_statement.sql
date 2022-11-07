select FirstName, LastName, Age,
case
    when Age > 30 then 'Old'
    when age between 30 and 35 then 'Medium_Aged'
    else 'Young'
end as 'Person'
from EmployeeDemographics;


select FirstName, LastName, Age,
case
    when Age = 38 then 'Stanley'
    when Age > 30 then 'old'
    else 'Baby'
end as 'Person'
from EmployeeDemographics;


select FirstName, LastName, JobTitle, Salary,
case
    when JobTitle = 'Salesman' then Salary + (Salary * .10)
    when JobTitle = 'Accountant' then Salary + (Salary * .05)
    when JobTitle = 'HR' then Salary + (Salary * .000001)
    else Salary + (Salary * 0.3)
end as SalaryAfterRaise
from EmployeeDemographics
join EmployeeSalary on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;