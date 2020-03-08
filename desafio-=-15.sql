USE hr;

DELIMITER $$
CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(in arg1 VARCHAR(100)) 
BEGIN 
  SELECT ROUND(AVG(A.SALARY), 2) AS 'media' 
  FROM hr.employees AS A 
  WHERE A.JOB_ID = arg1;
END $$ 

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');
