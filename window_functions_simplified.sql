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





