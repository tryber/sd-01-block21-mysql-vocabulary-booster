SELECT c.CustomerID,
c.ContactName AS Nome,
c.Country AS País,
(
SELECT count(*) FROM w3schools.customers c2
where c.Country = c2.Country
and c.CustomerID != c2.CustomerID
) AS 'Número de Compatriotas'
FROM w3schools.customers c
order by c.ContactName ASC;

