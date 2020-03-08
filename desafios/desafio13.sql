SELECT
  A.ProductName AS 'nome dos produtos',
  A.Price AS 'preço dos produtos'
FROM w3schools.products AS A
  INNER JOIN w3schools.order_details AS B
  ON  A.ProductID = B.ProductID
WHERE B.Quantity > 80
ORDER BY 1;
