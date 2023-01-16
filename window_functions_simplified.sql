CREATE TABLE Employee (
   Employee_ID INT PRIMARY KEY,
   Employee_Name VARCHAR(50) NOT NULL,
   Salary INT NOT NULL,
   Department VARCHAR(50) NOT NULL
);

INSERT INTO Employee (Employee_ID, Employee_Name, Salary, Department)
VALUES (1, 'John Smith', 50000, 'IT'),
       (2, 'Jane Doe', 55000, 'HR'),
       (3, 'Michael Johnson', 60000, 'IT'),
       (4, 'David Lee', 65000, 'HR'),
       (5, 'Sarah Patel', 70000, 'IT');

-- 1. RANK, DENSE_RANK, ROW_NUMBER, NTILE
SELECT Employee_ID, Employee_Name, Salary, Department,
RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Rank",
DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Dense Rank",
ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Row Number",
NTILE(2) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Quartile"
FROM Employee
ORDER BY Department, Salary DESC;

-- 2. LAG, LEAD, FIRST_VALUE, LAST_VALUE, NTH_VALUE
SELECT Employee_ID, Employee_Name, Salary, Department,
LAG(Salary, 1) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Previous Salary",
LEAD(Salary, 1) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Next Salary",
FIRST_VALUE(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "First Salary",
LAST_VALUE(Salary) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Last Salary",
NTH_VALUE(Salary, 2) OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Second Highest Salary"
FROM Employee
ORDER BY Department, Salary DESC;

-- 3. SUM, AVG, COUNT, MAX, MIN
SELECT Employee_ID, Employee_Name, Salary, Department,
SUM(Salary) OVER (PARTITION BY Department) AS "Department Total Salary",
AVG(Salary) OVER (PARTITION BY Department) AS "Department Average Salary",
COUNT(Salary) OVER (PARTITION BY Department) AS "Department Employee Count",
MAX(Salary) OVER (PARTITION BY Department) AS "Department Maximum Salary",
MIN(Salary) OVER (PARTITION BY Department) AS "Department Minimum Salary"
FROM Employee
ORDER BY Department, Salary DESC;

-- 4. CUME_DIST, PERCENT_RANK
SELECT Employee_ID, Employee_Name, Salary, Department,
CUME_DIST() OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Cumulative Distribution",
PERCENT_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS "Percentile Rank"
FROM Employee
ORDER BY Department, Salary DESC;


-- 5. ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
SELECT Employee_ID, Employee_Name, Salary, Department,
SUM(Salary) OVER (PARTITION BY Department ORDER BY Salary ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS "Running Total"
FROM Employee
ORDER BY Department, Salary;

-- It also returns the running total of salary for each employee within their department but it is based on the range of the salary
-- It is important to note that the result of these queries may vary depending on the data on the table and the specific requirements of the question. 
-- You can use these clauses for other window functions as well based on the question requirements.


-- ROWS BETWEEN UNBOUNDED FOLLOWING AND CURRENT ROW
SELECT Employee_ID, Employee_Name, Salary, Department,
SUM(Salary) OVER (PARTITION BY Department ORDER BY Salary ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS "Running Total"
FROM Employee
ORDER BY Department, Salary;

-- This query calculates the running total of salary for each employee within their department, but starting from the current row, unlike the previous query that starts from the first row in the table. 
-- The ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING clause specifies that the window frame for the SUM function should include all rows from the current row to the end of the partition.



-- 6. ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING 
SELECT Employee_ID, Employee_Name, Salary, Department,
AVG(Salary) OVER (PARTITION BY Department ORDER BY Salary ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS "Average Salary"
FROM Employee
ORDER BY Department, Salary;

-- This query calculates the average salary for each employee based on their immediate previous and next rows within the same department, ignoring the rest of the rows. The ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING clause specifies that the window frame for the AVG function should include the current row, the previous row, and the next row.
-- It is important to note that the result of this query may vary depending on the data on the table and the specific requirements of the question. You can use this clause for other window functions as well based on the question requirements.
-- You can also use ROWS BETWEEN 1 FOLLOWING AND 1 PRECEDING or RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING based on the requirements of the question.