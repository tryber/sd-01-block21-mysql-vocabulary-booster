USE hr;
DELIMITER $$ 

CREATE function ExibirQuantidadePessoasContratadasPorMesEAno(
mes int,
ano int
) 
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_func INT;
SELECT count(*) FROM employees e
where Month(e.HIRE_DATE) = mes
and year(e.HIRE_DATE) = ano
INTO qtd_func;
return qtd_func;
END $$

DELIMITER ; 

select ExibirQuantidadePessoasContratadasPorMesEAno(6, 1987);
