SELECT
    COUNTRY_NAME,
    CASE
        WHEN (REGION_ID = 1) THEN 'Incluído'
        ELSE 'Não incluído'
    END AS 'Status Inclusão'
FROM hr.countries LIMIT 25;
