USE hr;
DELIMITER $$ 

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(
in employee_id int
) 
BEGIN 
	SELECT
    employee_id,
    concat(e.FIRST_NAME,' ',e.LAST_NAME) as 'Nome Completo',
    j.JOB_TITLE as 'Cargo',
	d.DEPARTMENT_NAME as 'Departamento'
    FROM hr.job_history h
    INNER JOIN hr.employees e
	on e.JOB_ID = h.JOB_ID
    INNER JOIN hr.jobs j
	on h.JOB_ID = j.JOB_ID
    INNER JOIN hr.departments d
	on d.DEPARTMENT_ID = h.DEPARTMENT_ID
    where h.EMPLOYEE_ID = employee_id;
END $$ 

DELIMITER ; 

CALL ExibirHistoricoCompletoPorFuncionario(101);