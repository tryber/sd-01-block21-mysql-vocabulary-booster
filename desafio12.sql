SELECT A.first_name,
A.salary,
A.phone_number,
B.first_name,
B.salary,
B.phone_number
FROM hr.employees AS A
INNER JOIN hr.employees AS B
ON A.job_id = B.job_id
ORDER BY A.first_name;
