USE hr;
DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_funcionarios_contratados INT;
  SELECT COUNT(*) FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes INTO total_funcionarios_contratados;
  RETURN total_funcionarios_contratados;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
