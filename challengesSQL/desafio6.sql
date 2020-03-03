SELECT 
his.START_DATE,
his.EMPLOYEE_ID, 
CONCAT(emp.FIRST_NAME,' ',emp.LAST_NAME) AS 'Nome Completo',
his.JOB_ID,
job.JOB_TITLE AS Cargo,
his.DEPARTMENT_ID, 
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS his
INNER JOIN hr.jobs AS job 
ON job.JOB_ID = his.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = his.DEPARTMENT_ID
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
ORDER BY 3 DESC;
