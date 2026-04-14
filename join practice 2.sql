create database if not exists company_db;
use company_db;
drop table departments;
drop table employees;
CREATE TABLE if not exists Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE if not exists Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT
);

INSERT INTO Departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Sales');
INSERT INTO Employees VALUES (101, 'Aysha', 1), (102, 'Ridhi', 2), (103, 'Shugndha', NULL);
SELECT Employees.EmpName, Departments.DeptName
FROM Employees
INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;


SELECT Employees.EmpName, Departments.DeptName FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID
UNION
SELECT Employees.EmpName, Departments.DeptName FROM Employees
RIGHT JOIN Departments ON Employees.DeptID = Departments.DeptID;