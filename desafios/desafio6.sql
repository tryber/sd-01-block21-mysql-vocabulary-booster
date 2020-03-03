SELECT employee_id, 
(SELECT DEPARTMENT_ID, DEPARTMENT_NAME  AS 'Departamento'),
(SELECT start_date FROM hr.job_history),  employee_id, 
(SELECT CONCAT(FIRST_NAME, " ", LAST_NAME)AS 'Nome completo' FROM hr.employees),
(SELECT JOB_ID, JOB_TITLE AS 'Cargo' FROM hr.jobs )
FROM 


-- preso ainda na lógica...