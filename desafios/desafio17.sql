SELECT 
EMPLOYEE_ID,
DATE_FORMAT( START_DATE, "%d/%m/%Y" ) AS 'Data Início',
DATE_FORMAT( END_DATE, "%d/%m/%Y" ) AS 'Data Rescisão',
ROUND(DATEDIFF(end_date, start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history
ORDER BY 1;
