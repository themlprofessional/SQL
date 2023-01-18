drop table employee

CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL,
PhoneNumber VARCHAR(255) NOT NULL,
HireDate DATE NOT NULL,
Salary DECIMAL(10,2) NOT NULL
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '555-555-5555', '2022-01-01', 50000.00);
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', '555-555-5556', '2022-02-01', 55000.00);
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES (3, 'Bob', 'Johnson', 'bobjohnson@example.com', '555-555-5557', '2022-03-01', 60000.00);
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES (4, 'Samantha', 'Williams', 'samanthawilliams@example.com', '555-555-5558', '2022-04-01', 65000.00);
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES (5, 'Michael', 'Brown', 'michaelbrown@example.com', '555-555-5559', '2022-05-01', 70000.00);

-- Procedures in SQL

-- 1. Stored procedure to retrieve all employee records:
CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT * FROM Employee
END


EXEC GetAllEmployees

-- 2. Stored procedure to retrieve employee records by ID:
CREATE PROCEDURE GetEmployeeByID (@EmployeeID INT)
AS
BEGIN
    SELECT * FROM Employee WHERE EmployeeID = @EmployeeID
END


EXEC GetEmployeeByID @EmployeeID = 1

-- 3. Stored procedure to insert a new employee record:
CREATE PROCEDURE InsertEmployee (@FirstName VARCHAR(255), @LastName VARCHAR(255), @Email VARCHAR(255), @PhoneNumber VARCHAR(255), @HireDate DATE, @Salary DECIMAL(10,2))
AS
BEGIN
    INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, HireDate, Salary) 
    VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @HireDate, @Salary)
END


EXEC InsertEmployee @FirstName = 'New', @LastName = 'Employee', @Email = 'newemployee@example.com', @PhoneNumber = '555-555-5560', @HireDate = '2022-06-01', @Salary = 75000.00

-- 4. Stored procedure to update an employee record by ID:
CREATE PROCEDURE UpdateEmployee (@EmployeeID INT, @FirstName VARCHAR(255), @LastName VARCHAR(255), @Email VARCHAR(255), @PhoneNumber VARCHAR(255), @HireDate DATE, @Salary DECIMAL(10,2))
AS
BEGIN
    UPDATE Employee 
    SET FirstName = @FirstName, LastName = @LastName, Email = @Email, PhoneNumber = @PhoneNumber, HireDate = @HireDate, Salary = @Salary
    WHERE EmployeeID = @EmployeeID
END


EXEC UpdateEmployee @EmployeeID = 1, @FirstName = 'Updated', @LastName = 'Employee', @Email = 'updatedemployee@example.com', @PhoneNumber = '555-555-5561', @HireDate = '2022-07-01', @Salary = 80000.00

-- 5. Stored procedure to delete an employee record by ID:
CREATE PROCEDURE DeleteEmployee (@EmployeeID INT)
AS
BEGIN
    DELETE FROM Employee WHERE EmployeeID = @EmployeeID
END


EXEC DeleteEmployee @EmployeeID = 1

-- 6. Stored procedure to retrieve the average salary of all employees:
CREATE PROCEDURE GetAvgSalary
AS
BEGIN
    SELECT AVG(Salary) FROM Employee
END


EXEC GetAvgSalary

-- 7. Stored procedure to retrieve the count of all employees:
CREATE PROCEDURE GetEmployeeCount
AS
BEGIN
    SELECT COUNT(*) FROM Employee
END


EXEC GetEmployeeCount

-- 8. Stored procedure to retrieve the top 3 highest paid employees:
CREATE PROCEDURE GetTop3Employees
AS
BEGIN
    SELECT TOP 3 * FROM Employee ORDER BY Salary DESC
END


EXEC GetTop3Employees

-- stored procedure that retrieves employee records between two specified dates:
EXEC GetEmployeesByDate @StartDate = '2022-01-01', @EndDate = '2022-03-31'
