SELECT 
h.EMPLOYEE_ID,
UCASE(CONCAT(e.FIRST_NAME," ",e.LAST_NAME)) AS 'Nome completo',
h.start_date,
e.SALARY
FROM hr.job_history h
INNER JOIN hr.employees e
on h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.start_date) BETWEEN 1 AND 3
order by e.FIRST_NAME ASC;
