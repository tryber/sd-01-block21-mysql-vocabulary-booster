SELECT EmployeeId, count(*) AS 'Total de Pedidos'
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY 2;
