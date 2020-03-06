DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(funcionarioID INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE numeroDeEmprego INT;
	SELECT COUNT(job_id)
  FROM hr.job_history
  WHERE employee_id = funcionarioID INTO numeroDeEmprego;
  RETURN numeroDeEmprego;
END

$$ DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
