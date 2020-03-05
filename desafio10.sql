SELECT ProductID,
MIN(Quantity) AS Mínimo,
MAX(Quantity) AS Máximo,
ROUND(AVG(Quantity),2) AS Media
FROM w3schools.order_details
GROUP BY ProductID
HAVING Media > 20.00
ORDER BY Media ASC, Máximo ASC
LIMIT 48;
