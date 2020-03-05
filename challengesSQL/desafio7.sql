SELECT 
j_his.EMPLOYEE_ID, 
UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome Completo',
j_his.START_DATE, 
emp.SALARY
FROM hr.job_history AS j_his
INNER JOIN hr.employees AS emp
ON j_his.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(j_his.START_DATE) BETWEEN 1 AND 3
ORDER BY 2 ASC;
