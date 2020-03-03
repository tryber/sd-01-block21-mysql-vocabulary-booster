SELECT EmployeeID, COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY 2 ASC;
