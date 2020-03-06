USE hr;
DELIMITER $$
CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho ( IN ValorRecebido VARCHAR
(100))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS Média
  FROM hr.employees
  WHERE JOB_ID = ValorRecebido;
END
$$
DELIMITER ;
call BuscarMediaPorCategoriaDeTrabalho
('IT_PROG');
