SELECT job_title, ROUND(
MAX_SALARY - MIN_SALARY,4
) AS 'Diferença média entre salários mínimos e máximos'
FROM hr.jobs
ORDER BY (
MAX_SALARY - MIN_SALARY
) ASC;