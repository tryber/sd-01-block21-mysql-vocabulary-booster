select 
  A.FIRST_NAME,
  A.SALARY,
  A.PHONE_NUMBER,
  B.FIRST_NAME,
  B.SALARY, 
  B.PHONE_NUMBER
from hr.employees as A, hr.employees as B
where A.JOB_ID = B.JOB_ID
order by 1;
