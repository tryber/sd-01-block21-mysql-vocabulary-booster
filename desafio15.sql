DELIMITER $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN id varchar(10))
BEGIN
	SELECT ROUND(AVG(salary), 2)
  FROM hr.employees
  WHERE job_id = id;
END 

$$ DELIMITER ;

call BuscarMediaPorCategoriaDeTrabalho('AD_VP');
