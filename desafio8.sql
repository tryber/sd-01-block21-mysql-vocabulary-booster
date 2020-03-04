SELECT o.OrderId,
c.customerID,
c.ContactName,
o.ShipperID
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON o.customerID = c.customerID
AND o.ShipperID IN (1, 2)
ORDER BY 2;
