SELECT
  ProductID,
  MAX(Quantity) AS Máximo,
  MIN(Quantity) AS Mínimo,
  ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.order_details
GROUP BY ProductID
HAVING Média > 20
ORDER BY Média;
