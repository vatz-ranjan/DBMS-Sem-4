DROP TABLE Employee;
DROP TABLE Projects;
DROP TABLE Info;

DROP VIEW View_Emp;

SELECT * FROM Employee;
SELECT * FROM Projects;
SELECT * FROM Info;

SELECT * FROM View_Emp;

CREATE TABLE Employee
(
Emp_No INTEGER,
Emp_Name VARCHAR(10),
Dept_Name VARCHAR(10),
Salary NUMBER(8,2),
Dno INTEGER
);

CREATE TABLE Projects
(
P_No INTEGER,
P_Name VARCHAR(20),
D_Num INTEGER
);

CREATE TABLE Info
(
Emp_No INTEGER,
P_NO INTEGER,
NOHours INTEGER
);

INSERT INTO Employee VALUES (1, 'Amit', 'OBIEE', 68000, 12);
INSERT INTO Employee VALUES (2, 'Rohit', 'OBIEE', 55000, 11);
INSERT INTO Employee VALUES (3, 'Rohan', 'OBIEE', 43000, 10);

INSERT INTO Projects VALUES (3, 'Productz', 5);
INSERT INTO Projects VALUES (20, 'Reorganization', 1);
INSERT INTO Projects VALUES (1, 'Productx', 5);
INSERT INTO Projects VALUES (1, 'Productx', 5);
INSERT INTO Projects VALUES (2, 'Producty', 5);
INSERT INTO Projects VALUES (30, 'Nenbenefits', 4);
INSERT INTO Projects VALUES (2, 'Producty', 5);
INSERT INTO Projects VALUES (3, 'Productz', 5);
INSERT INTO Projects VALUES (30, 'Computerization', 4);
INSERT INTO Projects VALUES (20, 'Reorganization', 1);

INSERT INTO Info VALUES (1, 1, 32);
INSERT INTO Info VALUES (2, 3, 40);
INSERT INTO Info VALUES (4, 10, 9);
INSERT INTO Info VALUES (5, 2, 7);
INSERT INTO Info VALUES (3, 1, 20);
INSERT INTO Info VALUES (6, 3, 10);
INSERT INTO Info VALUES (1, 30, 32);

-- 1
CREATE VIEW View_Emp AS 
SELECT Emp_No, Emp_Name
FROM Employee;

-- 2
CREATE VIEW View_Emp AS 
SELECT Emp_No, Emp_Name, Salary
FROM Employee
WHERE Salary > 45000;

-- 3
CREATE VIEW View_Emp AS 
SELECT Emp_No, Emp_Name, Salary
FROM Employee
ORDER BY Salary;

-- 4
CREATE VIEW View_Emp AS 
SELECT Emp_Name, Dept_Name
FROM Employee;

-- 5
DROP VIEW View_Emp;

-- 6
CREATE VIEW View_Emp AS
SELECT E.Emp_Name, E.Dept_Name, P.P_Name, I.NOHours
FROM Employee E, Projects P, Info I
WHERE E.Emp_No = I.Emp_No and P.P_No = I.P_No;

