select EmployeeID, count(EmployeeID) as 'Total de pedidos'
from w3schools.orders
where EmployeeID in (EmployeeID)
group by EmployeeID
order by 2;
