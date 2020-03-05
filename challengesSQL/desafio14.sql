(SELECT Country FROM w3schools.customers
ORDER BY Country ASC LIMIT 5)
UNION
(SELECT Country FROM w3schools.suppliers
ORDER BY Country ASC LIMIT 5);
