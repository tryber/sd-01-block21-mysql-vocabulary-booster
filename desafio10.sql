SELECT ProductID, 
min(Quantity) AS 'Mínimo',
max(Quantity) AS 'Máximo',
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.order_details
GROUP BY ProductID
HAVING Média > 20
ORDER BY 4;
