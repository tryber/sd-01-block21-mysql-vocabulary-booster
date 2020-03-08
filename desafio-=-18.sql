USE hr;

DELIMITER $$
CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_contrates INT;
  SELECT count(*)
  FROM hr.employees
  WHERE month(HIRE_DATE) = mes and year(HIRE_DATE) = ano INTO total_contrates;
  RETURN total_contrates;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
