USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(jobs int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_total INT;
  SELECT COUNT(*)
  FROM hr.job_history
  WHERE hr.job_history.employee_id = jobs INTO jobs_total;
  RETURN jobs_total;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
