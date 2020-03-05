SELECT o.OrderID,
o.CustomerID,
c.ContactName,
o.ShipperID AS shipperid
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c
ON o.CustomerID = c.CustomerID
WHERE o.ShipperID = 1 OR o.ShipperID = 2
ORDER BY o.CustomerID ASC
LIMIT 128;
