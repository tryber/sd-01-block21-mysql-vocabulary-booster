select ProductID, 
  MIN(Quantity) as Mínimo,
  MAX(Quantity) as Máximo,
  round(AVG(Quantity), 2) as Média
from w3schools.order_details
group by ProductID
HAVING Média > 20
order by Média;
