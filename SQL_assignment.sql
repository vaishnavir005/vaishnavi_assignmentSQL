create database details;
use details;
use employee;



CREATE TABLE Manager_Details (
    Manager_ID INT auto_increment PRIMARY KEY,
    ManagerName VARCHAR(50),
    Dep VARCHAR(40)
);

INSERT INTO Manager_Details VALUES
(101, 'Vaishu', 'HR'),
(102, 'Anu', 'Sales'),
(103, 'Kaviya', 'IT');
select * from Manager_details;

CREATE TABLE Employee_Details (
    Empid INT auto_increment PRIMARY KEY,
    empName VARCHAR(50),
    Dep VARCHAR(40),
    Manager_ID INT,
    FOREIGN KEY (Manager_ID)
        REFERENCES Manager_Details(Manager_ID)
);

INSERT INTO Employee_Details VALUES
(1, 'Arun', 'HR', 101),
(2, 'Divya', 'Sales', 102),
(3, 'Ram', 'IT', 103);
select * from Employee_Details;

SELECT E.Empid, E.empName, E.Dep,
       E.Manager_ID, M.ManagerName
FROM Employee_Details E
INNER JOIN Manager_Details M
ON E.Manager_ID = M.Manager_ID;
