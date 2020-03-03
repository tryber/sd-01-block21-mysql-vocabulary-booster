SELECT job_id AS 'Código do Cargo', AVG(salary) AS Média,
CASE 
WHEN AVG(salary) >= 2000 AND AVG(salary) <= 5800 THEN 'Junior'
WHEN AVG(salary) > 5800 AND AVG(salary) <= 7500 THEN 'Pleno'
WHEN AVG(salary) > 7500 AND AVG(salary) <= 10500 THEN 'Sênior'
WHEN AVG(salary) > 10500 THEN 'CEO'
ELSE 'Sem registro'
END AS 'Senioridade'
FROM hr.employees
GROUP BY job_id
ORDER BY Média ASC;
