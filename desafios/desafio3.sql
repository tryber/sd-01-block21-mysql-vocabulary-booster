SELECT job_title, 
(MAX_SALARY - MIN_SALARY) AS 'Diferença média entre salários mínimos e máximos' 
FROM hr.jobs 
GROUP BY job_title
ORDER BY (MAX_SALARY - MIN_SALARY);
