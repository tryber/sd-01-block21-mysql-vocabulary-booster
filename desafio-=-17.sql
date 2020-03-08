SELECT EMPLOYEE_ID, 
date_format(START_DATE,'%d/%m/%Y') AS 'Data Início', 
date_format(END_DATE,'%d/%m/%Y') AS 'Data Rescisão',
ROUND(DATEDIFF(END_DATE,START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history
ORDER BY EMPLOYEE_ID;
