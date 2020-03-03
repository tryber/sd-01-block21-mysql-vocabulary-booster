SELECT JOBH.start_date, 
      EMP.employee_id, 
      CONCAT(EMP.first_name,' ', EMP.last_name) AS 'Nome Completo',
	    JOB.job_id,
      JOB.job_title AS 'Cargo',
      DEP.department_id,
      DEP.department_name AS Departamento
FROM hr.employees AS EMP, 
     hr.jobs AS JOB, 
     hr.job_history AS JOBH, 
     hr.departments AS DEP
WHERE EMP.employee_id = JOBH.employee_id
AND JOBH.job_id = JOB.job_id
AND DEP.department_id = JOBH.department_id
ORDER BY 3 DESC;
