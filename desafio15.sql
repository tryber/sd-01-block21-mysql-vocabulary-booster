USE hr;
DELIMITER $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN id VARCHAR(100))
BEGIN
	SELECT ROUND(AVG(e.SALARY),2) AS media
    FROM hr.employees AS e
    WHERE e.job_id = id
    GROUP BY e.job_id;
END $$

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');
