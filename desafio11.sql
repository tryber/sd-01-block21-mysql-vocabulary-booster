SELECT A.CustomerID,
A.CustomerName AS 'Nome',
A.Country AS "País", COUNT(A.Country) AS 'Números de Compatriotas'
FROM w3schools.customers AS A
INNER JOIN w3schools.customers AS B ON A.Country = B.Country
WHERE A.CustomerID <> B.CustomerID
GROUP BY A.CustomerID, A.Country
ORDER BY A.ContactName;
