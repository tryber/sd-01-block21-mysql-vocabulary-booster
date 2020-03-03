SELECT EMP.employee_id,
	     UCASE(CONCAT(EMP.first_name,' ', EMP.last_name)) AS 'nome completo',
       JOBH.start_date,
       EMP.salary
FROM hr.employees AS EMP, hr.job_history AS JOBH
WHERE MONTH(JOBH.start_date) IN (1, 2, 3)
AND EMP.employee_id = JOBH.employee_id
ORDER BY 2; 
