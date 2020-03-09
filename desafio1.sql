SELECT COUNTRY_NAME,
IF (REGION_ID <> 1, 'não incluído', 'incluído') AS 'Status Inclusão' 
FROM hr.countries;
