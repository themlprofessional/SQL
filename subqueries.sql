-- Subquery is used to return data that would be used in the main query or the outer query as a condition to specify the data we want reteived.

-- You can use subqueries almost anywhere, we can use it in select part of the query, the from, the where statement.

-- You can also use it in insert update and delete statements.

select * from EmployeeSalary


-- Subquery in Select Statement

select EmployeeID, Salary, (select AVG(Salary) from EmployeeSalary) as AllAvgSalary
from EmployeeSalary


-- How to do it with partition by

select EmployeeID, Salary, Avg(Salary) over() as AvgSalary 
from EmployeeSalary


-- Why group by doesn't work

select EmployeeID, Salary, Avg(Salary) as AvgSalary 
from EmployeeSalary
group by EmployeeID, Salary
order by 1,2


-- Subquery in From (Subquery seems to be slow, better use CTE's or Temp Tables)
-- Use Temp Tables lot more because you can use them over and over 
-- whereas a subquery you cannot, you have to write it out each time

-- Use Temp Table or CTE instead of this
select a.EmployeeID, AllAvgSalary
from (select EmployeeID, Salary, avg(salary) over() as AllAvgSalary
    from EmployeeSalary) a


-- Subquery in Where
-- for this EmployeeSalary table only return the employees if they are over the age of 30.
-- But in the EmployeeSalary table there is no Age column, that is in the EmployeeDemographics table.
-- Now if we wanted we could join that table and get that information or we could use a subquery
select EmployeeID, JobTitle, Salary
from EmployeeSalary
where EmployeeID in (
    select EmployeeID
    from EmployeeDemographics
    where Age > 30
)
-- Now if you wanted to display ge as a column in this output, you would have to join to that table,
-- And put that column or the field in the select statement