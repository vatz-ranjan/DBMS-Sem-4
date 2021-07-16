DESC Employee;
DESC Department;
DESC Student;

INSERT INTO Student
VALUES (001, 'A' , '01-01-2020', 20);

INSERT INTO Student
VALUES (002, 'B', '02-02-2020', 20);

ALTER TABLE Employee
ADD emp_contact NUMBER(10);

ALTER TABLE Employee
ADD experience INTEGER;

ALTER TABLE Employee
MODIFY emp_contact INTEGER;

ALTER TABLE Student
DROP COLUMN age;

DROP TABLE Department;

SELECT *
FROM Student;

TRUNCATE TABLE Student;

SELECT *
FROM Student;

RENAME Student to Student_information;

ALTER TABLE Employee
RENAME COLUMN emp_contact to contactno;

DESC student_information;
DESC Employee;