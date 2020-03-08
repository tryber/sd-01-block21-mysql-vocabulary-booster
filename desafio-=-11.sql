select A.CustomerID,
A.CustomerName as Nome,
A.Country as Páis,
count(A.Country) as "Número de Compatriotas"
from w3schools.customers as A, w3schools.customers as B
where A.Country = B.Country and A.CustomerName <> B.CustomerName
group by A.CustomerID
order by 2;
