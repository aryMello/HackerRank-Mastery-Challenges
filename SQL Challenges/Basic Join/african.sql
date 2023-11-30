/* Using - MS SQL SERVER

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT CITY.NAME FROM COUNTRY
INNER JOIN CITY
    ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE COUNTRY.CONTINENT = 'Africa';