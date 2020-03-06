SELECT START_DATE AS start_date, EMPLOYEE_ID as employee_id,
	(
    select CONCAT(FIRST_NAME,' ', LAST_NAME)
    from hr.employees
    where hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
    ) as 'Nome completo',
    JOB_ID,
    (
	select JOB_TITLE
    from hr.jobs
    where hr.jobs.JOB_ID = hr.job_history.JOB_ID
    )  as 'Cargo',
    DEPARTMENT_ID,
    (
	select DEPARTMENT_NAME
    from hr.departments
    where hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
    )  as 'Departamento'
FROM hr.job_history
where EMPLOYEE_ID <> 0
order by 3 desc;
