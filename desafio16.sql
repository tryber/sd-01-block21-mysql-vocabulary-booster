USE hr;
DELIMITER $$ 
CREATE function BuscarQuantidadeDeEmpregosPorFuncionario(
id int
) 
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT count(*) FROM job_history h
where h.EMPLOYEE_ID = id
INTO total_jobs;
return total_jobs;
END $$
DELIMITER ; 
select BuscarQuantidadeDeEmpregosPorFuncionario(101);
