SELECT COUNTRY_NAME,
IF(REGION_iD = 1, 'incluído', 'não incluído') as 'Status inclusão' 
from hr.countries;
