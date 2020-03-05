SELECT 
	E.employee_id,   
	UCASE(CONCAT(E.FIRST_NAME, " ", E.LAST_NAME)) AS 'Nome completo',
    JH.START_DATE,
    SALARY
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON MONTH(JH.START_DATE) IN(1,2,3) AND E.employee_id = JH.employee_id
ORDER BY 2;
