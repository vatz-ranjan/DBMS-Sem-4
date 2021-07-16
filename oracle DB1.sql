DROP TABLE Employee; 
DROP TABLE Department; 
DROP TABLE Student;
DROP TABLE Student_information; 


Create table Employee
(
Emp_Id INTEGER,
Emp_Name varchar(20),
Emp_Age INTEGER,
Emp_DOJ DATE
);

Create table Department
(
Dept_Id INTEGER,
Dept_Name varchar(30),
Emp_Id INTEGER
);

Create table Student
(
Reg_No NUMBER(12) PRIMARY KEY,
Name varchar(20) NOT NULL,
DOB DATE,
Age INTEGER
);

DESC Employee;
DESC Department;
DESC Student;