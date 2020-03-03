SELECT country_name, 
IF (region_id = 1, 'incluído', 'não incluído') AS 'Status inclusão' 
FROM hr.countries;
