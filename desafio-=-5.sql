SELECT JOB_TITLE as 'Cargo', 
  (MAX_SALARY - MIN_SALARY) AS  'Variação Salarial',
  ROUND((MIN_SALARY / 12), 2) AS 'Média mínima mensal',
  ROUND((MAX_SALARY / 12), 2) AS 'Média mínima mensal'
from hr.jobs
order by 2;
