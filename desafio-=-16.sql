USE hr;

DELIMITER $$
CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(arg1 INT) 
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_jobs INT;
  SELECT count(A.EMPLOYEE_ID)
  FROM hr.job_history AS A
  WHERE A.EMPLOYEE_ID = arg1
  group by EMPLOYEE_ID INTO total_jobs;
  RETURN total_jobs;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
