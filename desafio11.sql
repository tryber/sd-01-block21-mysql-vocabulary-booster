SELECT cA.CustomerID,
cA.ContactName AS Nome,
cA.Country AS País,
(SELECT COUNT(cB.Country) FROM w3schools.customers AS cB WHERE cB.Country = cA.Country GROUP BY cB.Country ) - 1
AS Número_de_Compatriotas
FROM w3schools.customers AS cA
HAVING Número_de_Compatriotas <> 0
ORDER BY Nome ASC;
