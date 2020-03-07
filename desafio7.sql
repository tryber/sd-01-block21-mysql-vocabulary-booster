SELECT EMP.employee_id,
UCASE(CONCAT(EMP.first_name,' ', EMP.last_name)) AS 'nome completo',
JOBH.start_date,
EMP.salary
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JOBH ON EMP.employee_id = JOBH.employee_id
WHERE MONTH(JOBH.start_date) IN (1, 2, 3)
ORDER BY 2; 
