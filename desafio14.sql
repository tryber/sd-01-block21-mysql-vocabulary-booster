(SELECT c.Country FROM w3schools.customers c 
order by Country asc
limit 5)
UNION
(SELECT s.Country FROM w3schools.suppliers s
order by Country asc
limit 5);