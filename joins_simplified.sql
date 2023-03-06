CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(255),
  department_id INT,
  salary DECIMAL(10,2),
  manager_id INT,
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(255),
  average_salary DECIMAL(10,2)
);

INSERT INTO department (department_id, department_name, average_salary)
VALUES (1, 'IT', 55000),
       (2, 'HR', 60000);
       
INSERT INTO employee (employee_id, employee_name, department_id, salary, manager_id)
VALUES (1, 'John Smith', 1, 50000, 3),
       (2, 'Jane Doe', 2, 60000, 4),
       (3, 'Bob Johnson', 1, 70000, NULL),
       (4, 'Samantha Williams', 2, 55000, 3);


-- Types of Joins
-- 1. Inner Join (Widely used) -- Types 1.1) Equi Join  1.2) Non-Equi Join
-- 2. Outer Join
--    2.1 Left outer Join (Widely used)
--    2.2 Right Outer Join OR Right Join (Widely used)
--    2.3 Full Outer Join OR Outer Join
-- 3. Cross Join
-- 4. Natural Join
-- 5. Self Join (Widely used)


----------------------------------------------------------------------------------------------

-- 1. Inner Join (Widely used) 

-- 1.1 Equi Join
SELECT * FROM employee
INNER JOIN department ON employee.department_id = department.department_id;

-- 1.2 Non-Equi Join
SELECT * FROM employee
INNER JOIN department ON employee.salary > department.average_salary;

----------------------------------------------------------------------------------------------

-- 2. Outer Join

-- 2.1 Left outer Join (Widely used)
SELECT * FROM employee
LEFT JOIN department ON employee.department_id = department.department_id;

-- 2.2 Right Outer Join OR Right Join (Widely used)
SELECT * FROM employee
RIGHT JOIN department ON employee.department_id = department.department_id;

-- 2.3 Full Outer Join OR Outer Join
SELECT * FROM employee
FULL OUTER JOIN department ON employee.department_id = department.department_id;


----------------------------------------------------------------------------------------------

-- 3. Cross Join
SELECT * FROM employee
CROSS JOIN department;

----------------------------------------------------------------------------------------------

-- 4. Natural Join (Not Supported in SQL Server)
SELECT * FROM employee
NATURAL JOIN department;

--  Instead of using the NATURAL JOIN, you can achieve the same results by using an INNER JOIN and specifying the join conditions on all the columns with the same name in both tables.
-- This query will return all rows from the employee table where the department_id matches a department_id in the department table.
SELECT * FROM employee
INNER JOIN department ON employee.department_id = department.department_id

----------------------------------------------------------------------------------------------

-- 5. Self Join (Widely used)
SELECT e1.employee_name, e2.employee_name
FROM employee e1
JOIN employee e2 ON e1.manager_id = e2.employee_id;

-- This query will join the "employee" table with itself, using the "manager_id" column of the first instance of the table (aliased as "e1") to match with the "employee_id" column of the second instance of the table (aliased as "e2"). 
-- This will return a result set containing the employee names of the employees and their managers.
