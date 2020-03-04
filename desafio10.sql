SELECT od.ProductID,
MIN(od.Quantity) AS Mínimo,
MAX(od.Quantity) AS Máximo,
ROUND(AVG(od.Quantity), 2) AS Média 
FROM w3schools.order_details od
group by od.ProductID
HAVING Média > 20.00
ORDER BY Média ASC;
