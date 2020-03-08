SELECT
JH.START_DATE,
E.employee_id,
CONCAT(E.FIRST_NAME, " ", E.LAST_NAME) AS 'Nome completo',
J.JOB_ID,
J.JOB_TITLE AS 'Cargo',
D.DEPARTMENT_ID,
D.DEPARTMENT_NAME
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN hr.jobs AS J
ON JH.JOB_ID = J.JOB_ID
INNER JOIN hr.departments AS D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
ORDER BY E.FIRST_NAME DESC;
