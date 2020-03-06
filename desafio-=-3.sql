select 
  JOB_TITLE,
  (MAX_SALARY - MIN_SALARY) as 'Diferença média entre salários mínimos e máximos'
FROM hr.jobs
order by (MAX_SALARY - MIN_SALARY);
