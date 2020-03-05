/* Usando a tabela orders do banco w3schools, exiba duas colunas:
a primeira coluna deve ser o EmployeeId e a
segunda coluna deve exibir o total de pedidos já feitos por aquele funcionário.
A segunda coluna deve possuir um apelido de "Total de pedidos".
Ordene seus resultados pelo total de pedidos em ordem crescente.
Sua query deve retornar apenas 9 resultados */

SELECT * FROM w3schools.orders;
SELECT EmployeeID,
COUNT(EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders
GROUP BY EmployeeID
ORDER BY COUNT(EmployeeID) ASC
LIMIT 9;
