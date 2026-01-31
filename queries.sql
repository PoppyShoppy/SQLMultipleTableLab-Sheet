 insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (1, 'Alice', 60000, 'HR', 1);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (2, 'Bob', 55000, 'IT', 1);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (3, 'Charlie', 50000, 'Finance', 2);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (4, 'Diana', 45000, 'IT', 2);
  insert into Employee (EmployeeNumber, EmployeeName, EmployeeSalary, DepartmentName, BossNumber) values (5, 'Eve', 40000, 'HR', 1);         


SELECT * FROM sqlite_master; 

select DISTINCT EmployeeName from Employee where DepartmentName = 'Marketing';

select DISTINCT ItemName from Sale, Department where Sale.DepartmentName= Department.DepartmentName and Department.DepartmentFloor = 2;

SELECT AVG(EmployeeSalary)
FROM Employee
WHERE DepartmentName = 'Clothes';


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

4. Find the average salary of the employees in the Clothes department
SELECT AVG(EmployeeSalary)
FROM Employee
WHERE DepartmentName = 'Clothes';

6. List the items delivered by exactly one supplier (i.e. the items always delivered by the same
supplier).
SELECT ItemName
FROM Delivery
GROUP BY ItemName HAVING COUNT(DISTINCT SupplierNumber) =
1;


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