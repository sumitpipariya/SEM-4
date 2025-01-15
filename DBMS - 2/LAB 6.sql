CREATE TABLE Products(
	Product_id INT,
	Product_Name Varchar (250),
	Price Decimal (10,2)
);

INSERT INTO Products (Product_id, Product_Name, Price) VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);

SELECT * FROM Products


--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
DECLARE @Product_id INT, @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE PRODECT_CURSOR CURSOR

FOR 
	SELECT Product_id,Product_Name ,Price FROM Products
OPEN PRODECT_CURSOR

FETCH NEXT FROM PRODECT_CURSOR INTO
	 @Product_id, @Product_Name, @Price 

WHILE @@FETCH_STATUS=0
BEGIN	
	PRINT  CAST(@Product_id AS VARCHAR(100)) +' - '+ @Product_Name +' - ' + CAST( @Price AS VARCHAR(100))
	FETCH NEXT FROM PRODECT_CURSOR INTO
	 @Product_id, @Product_Name, @Price 
END;

CLOSE PRODECT_CURSOR
DEALLOCATE PRODECT_CURSOR


--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName. (Example: 1_Smartphone)DECLARE @Product_id INT, @Product_Name Varchar(250)
DECLARE Product_Cursor_Fetch CURSOR

FOR 
	SELECT Product_id,Product_Name  FROM Products
OPEN Product_Cursor_Fetch

FETCH NEXT FROM Product_Cursor_Fetch INTO
	 @Product_id, @Product_Name

WHILE @@FETCH_STATUS=0
BEGIN	
	PRINT  CAST(@Product_id AS VARCHAR(100)) +'_'+ @Product_Name
	FETCH NEXT FROM Product_Cursor_Fetch INTO
	 @Product_id, @Product_Name
END;

CLOSE Product_Cursor_Fetch
DEALLOCATE Product_Cursor_Fetch


--Create a Cursor to Find and Display Products Above Price 30,000.
DECLARE @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE PRODECT_ABOVE_30000 CURSOR

FOR 
	SELECT Product_Name ,Price FROM Products
OPEN PRODECT_ABOVE_30000

FETCH NEXT FROM PRODECT_ABOVE_30000 INTO
	 @Product_Name, @Price 

WHILE @@FETCH_STATUS=0
BEGIN	
	IF @Price > 30000
		PRINT @Product_Name + ' - ' + CAST(@Price AS VARCHAR(100))
	FETCH NEXT FROM PRODECT_ABOVE_30000 INTO
	@Product_Name, @Price 
END;

CLOSE PRODECT_ABOVE_30000
DEALLOCATE PRODECT_ABOVE_30000


--4. Create a cursor Product_CursorDelete that deletes all the data from the Products table.
DECLARE @Product_id INT, @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE PRODECT_CURSOR_DELETE CURSOR

FOR 
	SELECT Product_id,Product_Name ,Price FROM Products
OPEN PRODECT_CURSOR_DELETE

FETCH NEXT FROM PRODECT_CURSOR_DELETE INTO
	 @Product_id, @Product_Name, @Price 

WHILE @@FETCH_STATUS=0
BEGIN	
	DELETE FROM Products
	WHERE @Product_id = Product_id
	FETCH NEXT FROM PRODECT_CURSOR_DELETE INTO
	 @Product_id, @Product_Name, @Price 
END;

CLOSE PRODECT_CURSOR_DELETE
DEALLOCATE PRODECT_CURSOR_DELETE

SELECT * FROM Products

--5. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases  the price by 10%.
DECLARE @Product_id INT, @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE Product_CursorUpdate CURSOR

FOR 
	SELECT Product_id,Product_Name ,Price FROM Products
OPEN Product_CursorUpdate

FETCH NEXT FROM Product_CursorUpdate INTO
	 @Product_id, @Product_Name, @Price 

WHILE @@FETCH_STATUS=0
BEGIN	
	UPDATE Products 
	SET Price = Price + Price *0.1
	WHERE @Product_id = Product_id
	FETCH NEXT FROM Product_CursorUpdate INTO
	 @Product_id, @Product_Name, @Price 
END;

CLOSE Product_CursorUpdate
DEALLOCATE Product_CursorUpdate


--6. Create a Cursor to Rounds the price of each product to the nearest whole number.DECLARE @Product_id INT, @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE PRODUCT_PRICE_WHOLE CURSOR

FOR 
	SELECT Product_id,Product_Name ,Price FROM Products
OPEN PRODUCT_PRICE_WHOLE

FETCH NEXT FROM PRODUCT_PRICE_WHOLE INTO
	 @Product_id, @Product_Name, @Price 

WHILE @@FETCH_STATUS=0
BEGIN	
	UPDATE Products
	SET Price = ROUND(@Price,2)
	WHERE @Product_id = Product_id
	FETCH NEXT FROM PRODUCT_PRICE_WHOLE INTO
	 @Product_id, @Product_Name, @Price 
END;

CLOSE PRODUCT_PRICE_WHOLE
DEALLOCATE PRODUCT_PRICE_WHOLE

SELECT * FROM Products


CREATE TABLE New_Products(
	Product_id INT,
	Product_Name Varchar (250),
	Price Decimal (10,2)
);
--7. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop” (Note: Create NewProducts table first with same fields as Products table)DECLARE @Product_id INT, @Product_Name Varchar(250) , @Price Decimal(10,2)
DECLARE PRODUCT_INSERT_CURSORS CURSOR

FOR 
	SELECT Product_id,Product_Name ,Price FROM Products
OPEN PRODUCT_INSERT_CURSORS

FETCH NEXT FROM PRODUCT_INSERT_CURSOR INTO
	 @Product_id, @Product_Name, @Price 
		
WHILE @@FETCH_STATUS=0
BEGIN	
	IF @Product_Name = 'LAPTOP'
		INSERT INTO New_Products
			VALUES(@Product_id,@Product_Name,@Price)
	FETCH NEXT FROM PRODUCT_INSERT_CURSORS INTO
	 @Product_id, @Product_Name, @Price 
END;

CLOSE PRODUCT_INSERT_CURSORS
DEALLOCATE PRODUCT_INSERT_CURSORS
