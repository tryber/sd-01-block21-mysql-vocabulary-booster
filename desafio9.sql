SELECT ord.EmployeeID, (
	SELECT count(*)
    from w3schools.orders o
    where o.EmployeeID = ord.EmployeeID
) as 'Total de pedidos'
FROM w3schools.orders ord
group by ord.EmployeeID
order by (
	SELECT count(*)
    from w3schools.orders o
    where o.EmployeeID = ord.EmployeeID
) asc;


