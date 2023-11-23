/* Using - MS SQL SERVER

Query the total population of all cities in CITY where District is California.
*/
SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';