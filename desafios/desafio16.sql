USE hr;
DELIMITER $$
CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(ValorAReceber INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidadeDeTrabalhos INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.job_history
WHERE EMPLOYEE_ID = ValorAReceber
INTO quantidadeDeTrabalhos;
RETURN quantidadeDeTrabalhos;
END $$
DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
