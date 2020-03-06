SELECT t1.OrderID, t2.CustomerID, t2.ContactName, t1.ShipperID
FROM w3schools.orders AS t1
INNER JOIN w3schools.customers AS t2
ON t1.CustomerID = t2.CustomerID
where t1.ShipperID = 1 or t1.ShipperID = 2
order by 2;

