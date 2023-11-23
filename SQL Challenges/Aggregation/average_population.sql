/* Using - MS SQL SERVER

Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
SELECT AVG(ROUND (POPULATION, 1)) FROM CITY;