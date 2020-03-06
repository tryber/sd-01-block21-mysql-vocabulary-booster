SELECT o.OrderID, c.CustomerID, c.ContactName, o.ShipperID
FROM w3schools.orders o
INNER JOIN w3schools.customers c
on o.CustomerID = c.CustomerID
where o.ShipperID = 2 or o.ShipperID = 1
order by o.CustomerID ASC;
