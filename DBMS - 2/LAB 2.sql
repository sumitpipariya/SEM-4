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








