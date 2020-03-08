USE hr;

DELIMITER $$
CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(in arg1 INT) 
BEGIN 
  SELECT EMPLOYEE_ID,
  (
  select CONCAT(FIRST_NAME,' ', LAST_NAME)
  from hr.employees
  where hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
  ) as 'Nome completo',
  (
  select JOB_TITLE
  from hr.jobs
  where hr.jobs.JOB_ID = hr.job_history.JOB_ID
  )  as 'Cargo',
  (
  select DEPARTMENT_NAME
  from hr.departments
  where hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
  )  as 'Departamento'
FROM hr.job_history
WHERE EMPLOYEE_ID = arg1;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
