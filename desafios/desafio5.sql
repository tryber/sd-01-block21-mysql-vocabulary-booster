SELECT JOB_TITLE AS "Cargo",
  (MAX_SALARY - MIN_SALARY ) AS 'Variação Salarial',
  ROUND((MIN_SALARY /12),2) AS 'Média Mínima Mensal',
  ROUND((MAX_SALARY /12),2) AS 'Média Máxima Mensal'
FROM hr.jobs
GROUP BY JOB_TITLE
ORDER BY (MAX_SALARY - MIN_SALARY);
