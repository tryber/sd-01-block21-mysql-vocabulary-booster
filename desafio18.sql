DELIMITER $$

CREATE FUNCTION ExibirQuantidadePessoasContratadasPorMesEAno(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_funcionarios INT;
SELECT COUNT(*)
FROM hr.employees
WHERE YEAR(hire_date) = ano
AND MONTH(hire_date) = mes
INTO total_funcionarios;
RETURN total_funcionarios;
END

$$ DELIMITER ;

SELECT ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
