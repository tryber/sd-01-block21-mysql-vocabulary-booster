SELECT
  EmployeeId,
  COUNT(EmployeeId) AS "Total de pedidos"
FROM w3schools.orders
GROUP BY 1
ORDER BY 2;