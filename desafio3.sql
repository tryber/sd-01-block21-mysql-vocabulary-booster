SELECT job_title, (max_salary - min_salary) AS 'Diferença média entre salários mínimos e máximos' 
FROM hr.jobs 
GROUP BY job_title
ORDER BY 2;
