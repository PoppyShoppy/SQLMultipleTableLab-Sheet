DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Sale;
DROP TABLE IF EXISTS Supplier;
DROP TABLE IF EXISTS Delivery;

CREATE TABLE Item (
	ItemName VARCHAR (30) NOT NULL,
  ItemType CHAR(1) NOT NULL,
  ItemColour VARCHAR(10),
  PRIMARY KEY (ItemName));

CREATE TABLE Department (
  DepartmentName VARCHAR(10) NOT NULL,
  DepartmentFloor SMALLINT UNSIGNED NOT NULL,
  DepartmentPhone SMALLINT UNSIGNED NOT NULL,
  EmployeeNumber SMALLINT UNSIGNED NOT NULL REFERENCES 
    Employee,
  PRIMARY KEY (DepartmentName));  

CREATE TABLE Employee (
  EmployeeNumber SMALLINT UNSIGNED NOT NULL ,
  EmployeeName VARCHAR(10) NOT NULL ,
  EmployeeSalary INTEGER UNSIGNED NOT NULL ,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  BossNumber SMALLINT UNSIGNED NOT NULL REFERENCES Employee,
  PRIMARY KEY (EmployeeNumber));

  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (1, 'Alice', 60000, 'HR', 1);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (2, 'Bob', 55000, 'IT', 1);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (3, 'Charlie', 50000, 'Finance', 2);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (4, 'Diana', 45000, 'IT', 2);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (5, 'Eve', 40000, 'HR', 1);         

CREATE TABLE Sale (
  SaleNumber INTEGER UNSIGNED NOT NULL,
  SaleQuantity SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  ItemName VARCHAR(30) NOT NULL REFERENCES Item,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  PRIMARY KEY (SaleNumber));

CREATE TABLE Supplier (
  SupplierNumber INTEGER UNSIGNED NOT NULL,
  SupplierName VARCHAR(30) NOT NULL,
  PRIMARY KEY (SupplierNumber));

CREATE TABLE Delivery (
  DeliveryNumber INTEGER UNSIGNED NOT NULL,
  DeliveryQuantity SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  ItemName VARCHAR(30) NOT NULL REFERENCES Item,
  DepartmentName VARCHAR(10) NOT NULL REFERENCES Department,
  SupplierNumber INTEGER UNSIGNED NOT NULL REFERENCES  
     Supplier,
  PRIMARY KEY (DeliveryNumber));

.tables

SELECT * FROM sqlite_master; 

select DISTINCT EmployeeName from Employee where DepartmentName = 'Marketing';

select DISTINCT ItemName from Sale, Department where Sale.DepartmentName= Department.DepartmentName and Department.DepartmentFloor = 2;

SELECT DISTINCT ItemName
FROM (Sale NATURAL JOIN Department)
WHERE Department.DepartmentFloor = 2;

Identify by floor the items available on floors other than the second floor
SELECT DISTINCT ItemName,
Department.DepartmentFloor AS 'On
Floor'
FROM Delivery, Department
WHERE Delivery.DepartmentName = Department.DepartmentName
AND
Department.DepartmentFloor <> 2
ORDER BY Department.DepartmentFloor, ItemName;


select DISTINCT 
-- using the data in the text files, insert into the tables this information
select * from Employee;
select * from Department;
select * from Item;
select * from Sale;
select * from Supplier;
select * from Delivery;

SELECT EmployeeNumber, EmployeeName, BossNumber
FROM Employee
ORDER BY EmployeeNumber;


select * from Item; 