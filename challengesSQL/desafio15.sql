USE hr;
DELIMITER $$

CREATE PROCEDURE ShowAverageRentalDurationOfMovie(
  IN jobID VARCHAR(10)
)
BEGIN
  SELECT ROUND(AVG(salary), 2) AS media
  FROM employees
  WHERE job_id = jobID;
END $$

DELIMITER ;

CALL ShowAverageRentalDurationOfMovie('IT_PROG');
