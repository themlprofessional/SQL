-- select
-- from
-- where
-- group by
-- having
-- order by
-- limit

select * from testDB.dbo.testTable;

select top 10 Quantity, count(*) as Quantity_Counts
from testDB.dbo.testTable
where UnitPrice >= 5
group by Quantity
having count(*) < 450
order by Quantity_Counts desc;

-- 1. AVG(), SUM()
select InvoiceNo,
avg(UnitPrice) over (partition by InvoiceNo) as AvgUnitPrice,
count(Quantity) over (partition by InvoiceNo) as TotalQuantity
from testDB.dbo.testTable;

-- 2. AVG(), SUM(), COUNT(), MAX(), MIN()
select InvoiceNo, StockCode, Description, UnitPrice,
avg(UnitPrice) over(partition by InvoiceNo) as AvgUnitPrice,
sum(Quantity) over(partition by InvoiceNo) as TotalQuantity,
count(StockCode) over(partition by InvoiceNo) as Number_Off_Items_Per_Invoice,
max(UnitPrice) over(partition by InvoiceNo) as Max_UnitPrice_Per_Invoice,
min(UnitPrice) over(partition by InvoiceNo) as Min_UnitPrice_Per_Invoice
from testDB.dbo.testTable;

-- 3. ROW_NUMBER()
select InvoiceNo, StockCode, Description, UnitPrice,
row_number() over(partition by InvoiceNo order by UnitPrice desc, StockCode desc) as Rank_Of_Unit_Per_Invoice,
count(StockCode) over(partition by InvoiceNo) as Number_Of_Items
from testDB.dbo.testTable;

-- 4. ROW_NUMBER() (Top Five)
with CTE as (
select InvoiceNo, StockCode, Description, UnitPrice,
row_number() over(partition by InvoiceNo order by StockCode desc, UnitPrice desc) as Rank_Of_Unit_Price_Per_Invoice
from testDB.dbo.testTable)

select * from CTE where Rank_Of_Unit_Price_Per_Invoice <= 5;

-- 5. ROW_NUMBER(), RANK(), DENSE_RANK()
select InvoiceNo, StockCode, Description, UnitPrice,
row_number() over (partition by InvoiceNo order by UnitPrice desc) as RowNumber_Of_UnitPrice_Per_Invoice,
rank() over(partition by InvoiceNo order by UnitPrice desc) as Rank_Of_UnitPrice_Per_Invoice,
dense_rank() over(partition by InvoiceNo order by UnitPrice desc) as DenseRank_Of_UnitPrice_Per_Invoice,
avg(UnitPrice) over(partition by InvoiceNo) as AvgUnitPrice,
count(InvoiceNo) over(partition by InvoiceNo) as Number_Of_Items
from testDB.dbo.testTable;

-- 6. NTILE() -> It divides the rows of the table into specified number of groups
-- If the rows are not divisible into equal number, it starts assigning more records to the starting group and less to the following one.
with CTE as (
    select CustomerID, sum(Revenue) as TotalRevenue
    from testDB.dbo.testTable
    group by CustomerID
)

select CustomerID, TotalRevenue,
ntile(4) over(order by CustomerID, TotalRevenue) as Revenue_Quartiles
from CTE;

-- 7. PERCENT_RANK(), CUME_DIST()



----

-- select CustomerID from testDB.dbo.testTable

-- SELECT CustomerID, month(InvoiceDate) AS Month, SUM(Revenue) AS Monthly_Revenue,
-- LAG(SUM(Revenue), 1) OVER (PARTITION BY CustomerID ORDER BY month(InvoiceDate)) AS Previous_Month_Revenue,
-- LEAD(SUM(Revenue), 1) OVER (PARTITION BY CustomerID ORDER BY month(InvoiceDate)) AS Next_Month_Revenue
-- FROM testDB.dbo.testTable
-- GROUP BY CustomerID, month(InvoiceDate)
-- ORDER BY CustomerID, month(InvoiceDate);

--------
-- 8. LAG(), LEAD()







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

-- dense_rank 