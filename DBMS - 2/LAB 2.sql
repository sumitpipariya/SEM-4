CREATE DATABASE CSE_4A_405

CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE PROCEDURE PR_DEPARTMENT_INSERT
	@DEPARTMENTID INT,
	@DEPARTMENTNAME VARCHAR(100)
AS 
BEGIN
	INSERT INTO Department
	VALUES(@DEPARTMENTID,@DEPARTMENTNAME)
END

EXEC PR_DEPARTMENT_INSERT 1,'ADMIN'
EXEC PR_DEPARTMENT_INSERT 2,'IT'
EXEC PR_DEPARTMENT_INSERT 3,'HR'
EXEC PR_DEPARTMENT_INSERT 4,'ACCOUNT'

SELECT * FROM Department




--Designation TABLE
CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);

CREATE PROCEDURE PR_DESIGNATION_INSERT
	@DesignationID INT,
	@DesignationName VARCHAR(100)
AS 
BEGIN
	INSERT INTO DESIGNATION
	VALUES(@DesignationID,@DesignationName)
END

EXEC PR_DESIGNATION_INSERT 11,'JOBBER'
EXEC PR_DESIGNATION_INSERT 12,'WELDER'
EXEC PR_DESIGNATION_INSERT 13,'CLERK'
EXEC PR_DESIGNATION_INSERT 14,'MANAGER'
EXEC PR_DESIGNATION_INSERT 15,'CEO'

SELECT * FROM DESIGNATION


---person table 
CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

CREATE PROCEDURE PR_PERSON_INSERT
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100),
	@Salary DECIMAL(8, 2),
	@JoiningDate DATETIME,
	@DepartmentID INT,
	@DesignationID INT
AS BEGIN
	INSERT INTO PERSON
	VALUES(@FirstName,@LastName,@Salary,@JoiningDate,@DepartmentID,@DesignationID)
END

EXEC PR_PERSON_INSERT  'Rahul', 'Anshu', 56000, '01-01-1990', 1, 12
EXEC PR_PERSON_INSERT  'Hardik', 'Hinsu', 18000, '09-25-1990', 2, 11
EXEC PR_PERSON_INSERT  'Bhavin', 'Kamani', 25000, '5-14-1991', NULL, 11
EXEC PR_PERSON_INSERT  'Bhoomi', 'Patel', 39000, '2-20-2014', 1, 13
EXEC PR_PERSON_INSERT  'Rohit', 'Rajgor', 17000, '7-23-1990', 2, 15
EXEC PR_PERSON_INSERT  'Priya', 'Mehta', 25000, '10-18-1990', 2, NULL
EXEC PR_PERSON_INSERT  'Neha', 'Trivedi', 18000, '2-20-2014', 3, 15

SELECT * FROM PERSON

--------DELETE
--1
CREATE PROCEDURE PR_DEPARTMENT_DELETE
	@DEPARTMENTID INT
AS 
BEGIN
	DELETE FROM Department
	WHERE DepartmentID = @DEPARTMENTID
END

EXEC PR_DEPARTMENT_DELETE 1

--2
CREATE PROCEDURE PR_DESIGNATION_DELETE
	@DesignationID  INT
AS 
BEGIN
	DELETE FROM Department
	WHERE DepartmentID = @DesignationID 
END

EXEC PR_DESIGNATION_DELETE 11

--3
CREATE PROCEDURE PR_PERSON_DELETE
	@PersonID INT
AS 
BEGIN
	DELETE FROM PERSON
	WHERE PersonID = @PersonID
END
EXEC PR_PERSON_DELETE 101


---UPDATE

--1
CREATE PROCEDURE PR_DEPARTMENT_UPDATE
	@DEPARTMENTID INT,
	@DEPARTMENTNAME VARCHAR(100)
AS 
BEGIN
	UPDATE Department
	SET DepartmentName = @DEPARTMENTNAME
	WHERE DepartmentID = @DEPARTMENTID
END

EXEC PR_DEPARTMENT_UPDATE 1,'B.TECH'
SELECT * FROM Department


--2
CREATE PROCEDURE PR_DESIGNATION_UPDATE
	@DesignationID INT,
	@DesignationName VARCHAR(100)
AS 
BEGIN
	UPDATE DESIGNATION
	SET DesignationName = @DesignationName
	WHERE DesignationID = @DesignationID 
END

EXEC PR_DESIGNATION_UPDATE 11,'ABC'
SELECT * FROM DESIGNATION


--3
CREATE PROCEDURE PR_PERSON_UPDATE
	@PersonID INT,
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100),
	@Salary DECIMAL(8, 2),
	@JoiningDate DATETIME,
	@DepartmentID INT,
	@DesignationID INT
AS BEGIN
	UPDATE PERSON
	SET FirstName = @FirstName, 
	LastName = @LastName, 
	Salary = @Salary,
	JoiningDate = @JoiningDate, 
	DepartmentID = @DepartmentID,
	DesignationID = @DesignationID
	WHERE PersonID = @PersonID
END

EXEC PR_PERSON_UPDATE 102,'ABC','XYZ',50000,'12-12-1990',1,12
SELECT * FROM PERSON

CREATE OR ALTER PROCEDURE PR_JOINS
AS
BEGIN
	SELECT Department.*, Designation.*, Person.*
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
END

EXEC PR_JOINS 


CREATE OR ALTER PROCEDURE PR_PERSON_DETAILS
AS
BEGIN
	SELECT TOP 3 * FROM Person
END;

EXEC PR_PERSON_DETAILS	



----------------Part – B---------------------


--5. Create a Procedure that takes the department name as input and returns a table with all workers working in that department.
CREATE OR ALTER PROCEDURE PR_DEPT_WORKER
	@DepartmentName VARCHAR(10)
AS
BEGIN
	SELECT Person.FirstName, Person.LastName
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	WHERE Department.DepartmentName = @DepartmentName
END;

EXEC PR_DEPT_WORKER 'IT'


--6. Create Procedure that takes department name & designation name as input and returns a table with worker’s first name, salary, joining date & department name.CREATE OR ALTER PROCEDURE PR_DETAILS_WORKER
	@DepartmentName VARCHAR(10),
	@DesignationName VARCHAR(10)
AS
BEGIN
	SELECT Person.FirstName,
		Person.Salary,
		Person.JoiningDate,
		Department.DepartmentName
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE DepartmentName = @DepartmentName AND
		DesignationName = @DesignationName
END

EXEC PR_DETAILS_WORKER 'Admin','Clerk'

--7. Create a Procedure that takes the first name as an input parameter and display all the details of the worker with their department & designation name.
CREATE OR ALTER PROCEDURE PR_DETAILS_WORKER_DEPT
	@FirstName VARCHAR(10)
AS
BEGIN
	SELECT Designation.DesignationName,
		Department.DepartmentName
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE FirstName = @FirstName
END

EXEC PR_DETAILS_WORKER_DEPT 'Bhavin'

--8. Create Procedure which displays department wise maximum, minimum & total salaries.CREATE OR ALTER PROCEDURE PR_MAX
AS
BEGIN 
	SELECT Department.DepartmentName,
		MAX(Person.Salary) AS MAX_SALARY,
		MIN(Person.Salary) AS MIN_SALARY,
		SUM(Person.Salary) AS TOTAL_SALARY
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	GROUP BY Department.DepartmentName
END

EXEC PR_MAX

--9. Create Procedure which displays designation wise average & total salaries.
CREATE OR ALTER PROCEDURE PR_DESIGNATION_MAX
AS
BEGIN 
	SELECT designation.DesignationName,
		MAX(Person.Salary) AS MAX_SALARY,
		MIN(Person.Salary) AS MIN_SALARY,
		SUM(Person.Salary) AS TOTAL_SALARY
	FROM Person JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	GROUP BY Designation.DesignationName
END

EXEC PR_DESIGNATION_MAX

--10. Create Procedure that Accepts Department Name and Returns Person Count.
CREATE OR ALTER PROCEDURE PR_PERSON_COUNT
	@DepartmentName VARCHAR(20)
AS
BEGIN
	SELECT COUNT(Person.PersonID) AS TOTAL_PERSON
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	WHERE DepartmentName = @DepartmentName
END;

EXEC PR_PERSON_COUNT 'IT'

--11. Create a procedure that takes a salary value as input and returns all workers with a salary greater than input salary value along with their department and designation details.
CREATE OR ALTER PROCEDURE PR_DETAILS_WORKER_DEPT
	@Salary INT
AS
BEGIN
	SELECT Designation.*,
		Department.*,
		Person.FirstName, Person.LastName,Person.Salary
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE  Salary > @Salary
END

EXEC PR_DETAILS_WORKER_DEPT 30000

--12. Create a procedure to find the department(s) with the highest total salary among all departments.
CREATE OR ALTER PROCEDURE PR_MAX_SALARY
AS
BEGIN
	SELECT SUM(Person.Salary) AS MAX_TOTAL_SAL
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	GROUP BY Department.DepartmentName
	HAVING MAX(Person.Salary) = SUM(Person.Salary)
END;

EXEC PR_MAX_SALARY

--13. Create a procedure that takes a designation name as input and returns a list of all workers under that designation who joined within the last 10 years, along with their department.CREATE OR ALTER PROCEDURE PR_DETAIL_10YEAR_WORKER
	@DesignationName VARCHAR(20)
AS
BEGIN
	SELECT Person.*,
		Department.DepartmentName
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE  (SELECT YEAR(GETDATE())) > 10
END

EXEC PR_DETAIL_10YEAR_WORKER 'Welder'