USE hr;
DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(
  IN employeeID INT
)
BEGIN
  SELECT j_his.EMPLOYEE_ID, 
  CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome Completo', 
  j.JOB_TITLE AS 'Cargo', 
  d.DEPARTMENT_NAME 'Departamento'
  FROM hr.job_history AS j_his
  INNER JOIN hr.employees AS e
  ON e.EMPLOYEE_ID = j_his.EMPLOYEE_ID
  INNER JOIN hr.departments AS d
  ON j_his.DEPARTMENT_ID = d.DEPARTMENT_ID
  INNER JOIN hr.jobs AS j
  ON j.JOB_ID = j_his.JOB_ID
  WHERE j_his.EMPLOYEE_ID = 101;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
