SELECT e.JOB_ID AS "Código do Cargo", AVG(SALARY) AS Média,
CASE
	WHEN AVG(SALARY) < 5800 THEN 'Junior'
    WHEN AVG(SALARY) < 7500 THEN 'Pleno'
	WHEN AVG(SALARY) < 10500 THEN 'Sênior'
	WHEN AVG(SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.employees e
GROUP BY e.JOB_ID
ORDER BY AVG(SALARY) ASC;
