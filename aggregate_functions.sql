-- If you use aggregate function either one of the selected columns must be used in group by clause
select CustomerID, sum(Revenue) as Total_Revenue
from testDB.dbo.testTable
order by CustomerID;

select CustomerID, Revenue as Total_Revenue
from testDB.dbo.testTable
order by CustomerID;