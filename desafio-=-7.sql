SELECT EMPLOYEE_ID as employee_id, START_DATE,
	(
    select UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME))
    from hr.employees
    where hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
    ) as 'Nome completo',
    START_DATE AS start_date,
    (
	select SALARY
    from hr.employees
    where hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
    ) as salary
FROM hr.job_history
where EMPLOYEE_ID <> 0 
and START_DATE like '%-01-%' or START_DATE like '%-02-%' or START_DATE like '%-03-%'
order by 3;
