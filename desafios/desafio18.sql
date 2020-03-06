USE hr;
DELIMITER $$
CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE RespostaDoTotalDeContratados INT;
SELECT COUNT(*)
FROM hr.employees
WHERE YEAR(HIRE_DATE) = ano AND MONTH(HIRE_DATE) = mes
INTO RespostaDoTotalDeContratados;
RETURN RespostaDoTotalDeContratados;
END $$
DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
