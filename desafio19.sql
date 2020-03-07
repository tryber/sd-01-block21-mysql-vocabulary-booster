DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(IN id_funcionario INT)
BEGIN
SELECT EMP.employee_id,
CONCAT(EMP.first_name,' ', EMP.last_name) AS 'Nome Completo',
J.job_title AS 'Cargo',
DEP.department_name AS 'Departamento'
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JOBH ON JOBH.employee_id = EMP.employee_id
INNER JOIN hr.jobs AS J ON J.job_id = JOBH.job_id
INNER JOIN hr.departments AS DEP ON DEP.department_id = JOBH.department_id
WHERE EMP.employee_id = id_funcionario;
END

$$ DELIMITER ;

call ExibirHistoricoCompletoPorFuncionario(101);
