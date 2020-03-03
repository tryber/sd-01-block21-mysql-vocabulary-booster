SELECT o.OrderID, o.CustomerID, c.ContactName, o.ShipperID
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c
ON o.CustomerID = c.CustomerID
WHERE o.ShipperID = 1 OR o.ShipperID = 2
ORDER BY 2 ASC; 

--CONFERIR COM O CACIQUE A QUANTIDADE DE RESULTADOS RETORNADOS
