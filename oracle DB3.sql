DROP TABLE Employee;

CREATE TABLE Employee
(
Emp_Id NUMBER(6),
last_name  VARCHAR2(25),
first_name  VARCHAR2(20),
salary NUMBER(8,2),
Dept_Id INTEGER
);

INSERT INTO Employee
VALUES (1001, 'Smith', 'John', 62000, 500);

INSERT INTO Employee
VALUES (1002, 'Anderson', 'Jane', 57500, 500);

INSERT INTO Employee
VALUES (1003, Null, 'Sally', 58000, 502);

INSERT INTO Employee
VALUES (1004, Null, 'Charlie', 55000, 502);

INSERT INTO Employee (Emp_Id, first_name, salary, Dept_Id)
VALUES (1005, 'Alpha', 55000, 501);

INSERT INTO Employee (Emp_Id, first_name, salary, Dept_Id)
VALUES (1006, 'Gamma', 50000, 501);

SELECT *
FROM Employee;

INSERT INTO Employee
VALUES (&Emp_Id, '&last_name', '&first_name', &salary, &Dept_Id);
