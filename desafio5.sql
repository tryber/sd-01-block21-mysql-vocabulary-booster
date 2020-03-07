SELECT job_title AS 'Cargo', 
(max_salary - min_salary) AS 'Variação Salarial',
ROUND(min_salary / 12, 2) AS 'Média Mínima Mensal',
ROUND(max_salary / 12, 2) AS 'Média Máxima Mensal'
FROM hr.jobs
ORDER BY 2;
