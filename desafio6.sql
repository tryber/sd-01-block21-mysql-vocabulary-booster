SELECT JOBH.start_date, 
EMP.employee_id, 
CONCAT(EMP.first_name,' ', EMP.last_name) AS 'Nome Completo',
JOB.job_id,
JOB.job_title AS 'Cargo',
DEP.department_id,
DEP.department_name AS Departamento
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JOBH ON EMP.employee_id = JOBH.employee_id
INNER JOIN hr.jobs AS JOB ON JOB.job_id = JOBH.job_id
INNER JOIN hr.departments AS DEP ON DEP.department_id = JOBH.department_id
ORDER BY 3 DESC;
