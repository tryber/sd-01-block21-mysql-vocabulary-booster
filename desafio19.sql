USE hr;
DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(IN id INT)
BEGIN
SELECT jh.EMPLOYEE_ID,
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
j.JOB_TITLE AS Cargo,
d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND j.JOB_ID = jh.JOB_ID AND d.DEPARTMENT_ID = jh.DEPARTMENT_ID AND jh.EMPLOYEE_ID = id;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
