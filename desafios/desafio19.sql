USE hr;
DELIMITER $$
CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(
  IN employeeID INT
)
BEGIN
  SELECT JH.EMPLOYEE_ID, 
  CONCAT(E.FIRST_NAME,' ',E.LAST_NAME) AS 'Nome Completo', 
  J.JOB_TITLE AS 'Cargo', 
  D.DEPARTMENT_NAME 'Departamento'
  FROM hr.job_history AS JH
  INNER JOIN hr.employees AS E
  ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  INNER JOIN hr.departments AS D
  ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
  INNER JOIN hr.jobs AS J
  ON J.JOB_ID = JH.JOB_ID
  WHERE JH.EMPLOYEE_ID = employeeID;
END $$
DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
