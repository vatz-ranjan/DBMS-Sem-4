-- Ignore // 
DROP TABLE Emp;

CREATE TABLE Emp
(
EmpNo INTEGER,
EmpName VARCHAR2(20),
Sal NUMBER(8,2),
DeptNo INTEGER
);

INSERT INTO Emp VALUES (11, 'John', 8500, 10);
INSERT INTO Emp VALUES (12, 'Nrg', 8500, 20);
INSERT INTO Emp VALUES (13, 'Tia', 15000, 30);
INSERT INTO Emp VALUES (14, 'Ruhi', 16725, 20);
INSERT INTO Emp VALUES (15, 'Kshvi', 20045, 10);
INSERT INTO Emp VALUES (16, 'Ridhmima', 40052, 30);
INSERT INTO Emp VALUES (17, 'Armaan', 6000, 30);
INSERT INTO Emp VALUES (18, 'Ishaan', 8000, 40);
INSERT INTO Emp VALUES (19, 'Manika', 9000, 10);
INSERT INTO Emp VALUES (20, 'Subhash', 4000, 50);

SELECT * FROM Emp;
SELECT DISTINCT(DeptNo) FROM Emp;
SELECT DeptNo, COUNT(DeptNo) FROM Emp GROUP BY DeptNo;
SELECT DeptNo, COUNT(*) AS Employees FROM Emp GROUP BY DeptNo;
SELECT DeptNo, MAX(Sal) FROM Emp GROUP BY DeptNo;
SELECT DeptNo, COUNT(DeptNo) FROM Emp GROUP BY DeptNo HAVING COUNT(*)>2;
SELECT * FROM Emp WHERE Sal = (SELECT MAX(Sal) FROM Emp);
SELECT * FROM Emp WHERE (EmpNo = 13);
SELECT EmpName, Sal FROM Emp WHERE (Sal>5000 and Sal<15000);
SELECT EmpName, EmpNo FROM Emp WHERE (DeptNo = 10 or DeptNo = 20);
SELECT * FROM Emp WHERE (DeptNo in (10,20,30));
SELECT * FROM Emp WHERE (DeptNo not in (10,20,30));
SELECT * FROM Emp WHERE Sal > 5000 ORDER BY EmpName;
SELECT * FROM Emp ORDER BY Sal DESC;