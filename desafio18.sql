USE hr;
DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_employeers INT;
SELECT COUNT(HIRE_DATE) FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO qnt_employeers;
RETURN qnt_employeers;
END $$

DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
