SELECT 
A.first_name, 
A.salary, 
A.phone_number,
B.first_name, 
B.salary,
B.phone_number
FROM hr.employees AS A
INNER JOIN hr.employees AS B 
ON  A.JOB_ID = B.JOB_ID
ORDER BY 1
LIMIT 1839;
