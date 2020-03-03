SELECT 
j_his.START_DATE,
j_his.EMPLOYEE_ID, 
CONCAT(emp.FIRST_NAME,' ',emp.LAST_NAME) AS 'Nome Completo',
j_his.JOB_ID,
job.JOB_TITLE AS Cargo,
j_his.DEPARTMENT_ID, 
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS j_his
INNER JOIN hr.jobs AS job 
ON job.JOB_ID = j_his.JOB_ID
INNER JOIN hr.departments AS dep
ON dep.DEPARTMENT_ID = j_his.DEPARTMENT_ID
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = j_his.EMPLOYEE_ID
ORDER BY 3 DESC;
