SELECT
  C.CustomerID,
  C.ContactName AS Nome,
  C.Country AS PAÍS,
  COUNT(B.Country) AS 'Número de Compatriotas'
FROM w3schools.customers AS C
  INNER JOIN w3schools.customers AS B
  ON  C.Country = B.Country
WHERE C.CustomerID != B.CustomerID
GROUP BY 1
ORDER BY 2;
