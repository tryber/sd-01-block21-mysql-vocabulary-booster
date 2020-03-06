SELECT 
h.START_DATE,
h.EMPLOYEE_ID,
CONCAT(e.FIRST_NAME," ",e.LAST_NAME) AS 'Nome Completo',
h.JOB_ID,
j.JOB_TITLE AS Cargo,
h.DEPARTMENT_ID,
d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history h
INNER JOIN hr.employees e
on h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs j
on h.JOB_ID = j.JOB_ID
INNER JOIN hr.departments d
on d.DEPARTMENT_ID = h.DEPARTMENT_ID
order by e.FIRST_NAME DESC;
