SELECT h.EMPLOYEE_ID,
(concat(DAY(h.START_DATE),'/',MONTH(h.START_DATE),'/',YEAR(h.START_DATE)))as 'Data Início',
(concat(DAY(h.END_DATE),'/',MONTH(h.END_DATE),'/',YEAR(h.END_DATE))) as 'Data Rescisão',
ROUND((DATEDIFF(end_date, start_date) / 365), 2) as 'Anos trabalhados'
FROM hr.job_history h
order by employee_id;
