USE hr;
DELIMITER $$

CREATE PROCEDURE ShowAverageRentalDurationOfMovie(
IN jobID VARCHAR(300),
OUT media DOUBLE
)
BEGIN
SELECT AVG(ROUND(salary, 2)) INTO media
FROM hr.employees
WHERE job_id = jobID
GROUP BY job_id;
END $$

DELIMITER ;

CALL ShowAverageRentalDurationOfMovie('IT_PROG', @media);
SELECT @media;
