CREATE TABLE DeletedOrders
(
	OrderId INT, 
	ItemId INT, 
	ItemQuantity INT
)
GO

CREATE TRIGGER tr_DELETEDITEM
ON Orders
AFTER DELETE 
AS 
BEGIN 
	 INSERT INTO DeletedOrders
	 SELECT * FROM DELETED 
END

DELETE FROM OrderItems
WHERE OrderId = 5

DELETE FROM Orders
WHERE Id = 5 