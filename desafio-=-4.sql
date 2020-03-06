SELECT JOB_ID as 'Código do Cargo', 
  avg(SALARY) as 'Média',
  CASE
	WHEN avg(SALARY) >= 2000 and avg(SALARY) <= 5800 THEN 'Junior'
	WHEN avg(SALARY) >= 5801 and avg(SALARY) <= 7500 THEN 'Pleno'
	WHEN avg(SALARY) >= 7501 and avg(SALARY) <= 10500 THEN 'Senior'
	WHEN avg(SALARY) > 10500 THEN 'CEO'
  END AS Senioridade
from hr.employees
group by JOB_ID
order by Média;
