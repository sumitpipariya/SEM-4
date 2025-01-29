CREATE TABLE EMPLOYEEDETAILS
(
	EmployeeID		Int Primary Key,
	EmployeeName	Varchar(100) Not Null,
	ContactNo		Varchar(100) Not Null,
	Department		Varchar(100) Not Null,
	Salary			Decimal(10,2) Not Null,
	JoiningDate		DateTime Null
)


CREATE TABLE EmployeeLogs (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT NOT NULL,
    EmployeeName VARCHAR(100) NOT NULL,
    ActionPerformed VARCHAR(100) NOT NULL,
    ActionDate DATETIME NOT NULL
);


--1)	Create a trigger that fires AFTER INSERT, UPDATE, and DELETE operations on the EmployeeDetails table to display the message "Employee record inserted", "Employee record updated", "Employee record deleted"
CREATE OR ALTER TRIGGER TR_INSERT_OPERATION
ON EMPLOYEEDETAILS
AFTER INSERT
AS
BEGIN
	DECLARE @MSG VARCHAR(100)
	SET @MSG = 'Employee record inserted'
END
DROP TRIGGER TR_INSERT_OPERATION

CREATE OR ALTER TRIGGER TR_DELETE_OPERATION
ON EMPLOYEEDETAILS
AFTER DELETE
AS
BEGIN
	DECLARE @MSG VARCHAR(100)
	SET @MSG = 'Employee record updated'
END
DROP TRIGGER TR_DELETE_OPERATION.

CREATE OR ALTER TRIGGER TR_UPDATE_OPERATION
ON EMPLOYEEDETAILS
AFTER UPDATE
AS
BEGIN
	DECLARE @MSG VARCHAR(100)
	SET @MSG = 'Employee record updated'
END
DROP TRIGGER TR_UPDATE_OPERATION



--2)Create a trigger that fires AFTER INSERT, UPDATE, and DELETE operations on the EmployeeDetails table to log all operations into the EmployeeLog table.
CREATE OR ALTER TRIGGER TR_LOG_INSERT
ON EMPLOYEEDETAILS
AFTER INSERT
AS
BEGIN
	DECLARE @EmployeeID INT, 
		@EmployeeName VARCHAR(50)
	
	SELECT @EmployeeID = EmployeeID FROM inserted
	SELECT @EmployeeName = EmployeeName FROM inserted
	
	INSERT INTO EmployeeLogs VALUES(@EmployeeID,@EmployeeName,'INSERTTED',GETDATE())
END;


CREATE OR ALTER TRIGGER TR_LOG_UPDATE
ON EMPLOYEEDETAILS
AFTER UPDATE
AS
BEGIN
	DECLARE @EmployeeID INT, 
		@EmployeeName VARCHAR(50)
	
	SELECT @EmployeeID = EmployeeID FROM inserted
	SELECT @EmployeeName = EmployeeName FROM inserted
	
	INSERT INTO EmployeeLogs VALUES(@EmployeeID,@EmployeeName,'UPDATED',GETDATE())
END;


CREATE OR ALTER TRIGGER TR_LOG_DELETE
ON EMPLOYEEDETAILS
AFTER DELETE
AS
BEGIN
	DECLARE @EmployeeID INT, 
		@EmployeeName VARCHAR(50)
	
	SELECT @EmployeeID = EmployeeID FROM deleted
	SELECT @EmployeeName = EmployeeName FROM deleted
	
	INSERT INTO EmployeeLogs VALUES(@EmployeeID,@EmployeeName,'deleted',GETDATE())
END;



---3)	Create a trigger that fires AFTER INSERT to automatically calculate the joining bonus (10% of the salary) for new employees and update a bonus column in the EmployeeDetails table.
CREATE OR ALTER TRIGGER TR_UPDATE_SAL
ON EMPLOYEEDETAILS
AFTER INSERT
AS
BEGIN
	DECLARE @Salary INT,
		@EmployeeID INT

	SELECT @EmployeeID = EmployeeID FROM inserted
	SELECT @Salary = Salary FROM inserted

	UPDATE EMPLOYEEDETAILS
	SET Salary = @Salary + (@Salary * 0.10)
	WHERE EmployeeID = @EmployeeID
END


--4)	Create a trigger to ensure that the JoiningDate is automatically set to the current date if it is NULL during an INSERT operation.
CREATE OR ALTER TRIGGER TR_DATE_UPDATE
ON EMPLOYEEDETAILS
AFTER INSERT
AS
BEGIN
	DECLARE @JoiningDate DateTime ,
		@EmployeeID INT

	SELECT @EmployeeID = EmployeeID FROM inserted
	SELECT @JoiningDate = JoiningDate FROM inserted

	UPDATE EMPLOYEEDETAILS
	SET @JoiningDate = GETDATE()
	WHERE JoiningDate IS NULL
END

--5)Create a trigger that ensure that ContactNo is valid during insert and update (Like ContactNo length is 10)
CREATE OR ALTER TRIGGER TR_ContactNo_LEN
ON EMPLOYEEDETAILS
AFTER INSERT,UPDATE
AS
BEGIN
	DECLARE @ContactNo  Varchar(100),
			@EmployeeID INT

	SELECT @EmployeeID = EmployeeID FROM inserted
	SELECT @ContactNo = ContactNo FROM inserted

	IF LEN(@ContactNo) != 10
		BEGIN
			PRINT 'INVALID PHONE NO'
		END
END;


