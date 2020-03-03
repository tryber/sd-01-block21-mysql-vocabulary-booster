SELECT JOB_TITLE, MAX_SALARY - MIN_SALARY AS 'Diferença média entre salários mínimos e máximos'
FROM hr.jobs
ORDER BY 2 ASC;
