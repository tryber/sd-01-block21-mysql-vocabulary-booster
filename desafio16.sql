USE hr
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_job int;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.job_history
GROUP BY EMPLOYEE_ID
HAVING EMPLOYEE_ID = id INTO qnt_job;
RETURN qnt_job;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
