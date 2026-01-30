.mode tabs
.nullvalue \N
PRAGMA foreign_keys = OFF;

DELETE FROM Employee;

.import employee.txt Employee

PRAGMA foreign_keys = ON;