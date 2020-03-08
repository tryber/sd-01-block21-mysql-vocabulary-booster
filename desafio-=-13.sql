SELECT
  (
  SELECT ProductName
  FROM w3schools.products
  WHERE  w3schools.order_details.ProductID = w3schools.products.ProductID
  ) as productname,
  (
  SELECT Price
  FROM w3schools.products
  WHERE  w3schools.order_details.ProductID = w3schools.products.ProductID
  ) as Price
FROM w3schools.order_details
where quantity > 80
order by productname;
