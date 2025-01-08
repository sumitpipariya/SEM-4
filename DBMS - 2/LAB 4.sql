--1. Write a function to print "hello world".
CREATE OR ALTER FUNCTION FN_HELLO()
RETURNS VARCHAR(100)
AS
BEGIN
	RETURN 'HELLO WORLD'
END

SELECT DBO.FN_HELLO()


--2. Write a function which returns addition of two numbers.
CREATE OR ALTER FUNCTION FN_ADD(@N1 INT, @N2 INT)
RETURNS INT
AS
BEGIN
	RETURN @N1 + @N2
END

SELECT DBO.FN_ADD(10,20)


--3. Write a function to check whether the given number is ODD or EVEN.
CREATE OR ALTER FUNCTION FN_CHECK_NO(@N INT)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @MSG VARCHAR(20)
	IF(@N%2=0)
		SET @MSG = 'EVEN' 
	ELSE
		SET @MSG = 'ODD'
	RETURN @MSG
END

SELECT DBO.FN_CHECK_NO(10)


--4. Write a function which returns a table with details of a person whose first name starts with B.
CREATE OR ALTER FUNCTION FN_NAME_B()
RETURNS TABLE
AS
	RETURN 
		SELECT * FROM Person
		WHERE FirstName LIKE 'B%'

SELECT * FROM FN_NAME_B()


--5. Write a function which returns a table with unique first names from the person table.
CREATE OR ALTER FUNCTION FN_NAME_UNIQUE()
RETURNS TABLE
AS
	RETURN 
		SELECT DISTINCT FirstName FROM Person

SELECT * FROM FN_NAME_UNIQUE()


--6. Write a function to print number from 1 to N. (Using while loop)
CREATE OR ALTER FUNCTION FN_1_TO_N(@N INT)
RETURNS VARCHAR(MAX) 
AS
BEGIN 
	DECLARE @I INT = 1
	DECLARE @ANS VARCHAR(MAX) = ''
	WHILE(@I <= @N)
		BEGIN
			SET @ANS = @ANS+CAST(@I AS VARCHAR(MAX))+' ' 
			SET @I = @I + 1
		END	
		RETURN @ANS
END

SELECT DBO.FN_1_TO_N(15)


--7. Write a function to find the factorial of a given integer.CREATE OR ALTER FUNCTION FN_FACT(@N INT)
RETURNS INT
AS
BEGIN
	DECLARE @I INT = 1
	DECLARE @ANS INT = 1
	WHILE(@I <= @N)
		BEGIN
			SET @ANS = @ANS * @I
			SET @I = @I + 1
		END
	RETURN @ANS
END

SELECT DBO.FN_FACT(5)


--8. Write a function to compare two integers and return the comparison result. (Using Case statement)
CREATE OR ALTER FUNCTION FN_COMPARE(@N1 INT,@N2 INT)
RETURNS VARCHAR(20)
AS
BEGIN
	RETURN CASE
			WHEN @N1 > @N2 THEN 'First is big'
			WHEN @N1 < @N2 THEN 'Second is big'
			ELSE 'Both are same'
		END
END

SELECT DBO.FN_COMPARE(20,20)


--9. Write a function to print the sum of even numbers between 1 to 20.
CREATE OR ALTER FUNCTION FN_EVEN_ADD()
RETURNS INT
AS
BEGIN
	DECLARE @SUM INT = 0
	DECLARE @I INT = 1
	WHILE(@I <= 20)
		BEGIN
		IF @I%2=0
			SET @SUM = @SUM + @I
			SET @I = @I + 1
		END
	RETURN @SUM
END

SELECT DBO.FN_EVEN_ADD()


--10. Write a function that checks if a given string is a palindromeCREATE OR ALTER FUNCTION FN_PALINDROME(@S VARCHAR(MAX))RETURNS VARCHAR(MAX)ASBEGIN	DECLARE @MSG VARCHAR(MAX) 	DECLARE @ANS VARCHAR(MAX) = REVERSE(@S)	IF(@ANS = @S)		SET @MSG = 'PALINDROME'	ELSE		SET @MSG = 'NOT PALINDROME'ENDSELECT DBO.FN_PALINDROME('NAYAN')