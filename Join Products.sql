SELECT Orders.OrderID, 
		Customers.CustomerName, 
        Shippers.SHipperName,
        Products.ProductName
FROM (
		(((Orders 
        INNER JOIN Customers
        On Orders.CUstomerID = Customers.CustomerID) 
        INNER JOIN Shippers 
		ON Orders.ShipperID = Shippers.ShipperID)
        INNER JOIN OrderDetails
        ON Orders.OrderID = OrderDetails.OrderID)
        INNER JOIN Products
        ON OrderDetails.ProductID = Products.ProductID)
;