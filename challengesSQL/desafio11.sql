SELECT a.CustomerID, 
a.ContactName AS Nome, 
a.Country AS País, COUNT(a.Country) AS 'Número de Compatriotas'
FROM w3schools.customers AS a
INNER JOIN w3schools.customers AS c
ON a.Country = c.Country
WHERE a.CustomerID <> c.CustomerID
GROUP BY a.CustomerID, a.Country
ORDER BY a.ContactName ASC;
