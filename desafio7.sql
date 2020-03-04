SELECT e.EMPLOYEE_ID,
UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS Nome_completo,
jh.START_DATE,
e.SALARY
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01, 02, 03)
ORDER BY Nome_completo
LIMIT 6;
