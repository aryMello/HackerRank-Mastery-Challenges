/* Using - MS SQL SERVER

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths.
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
*/
SELECT TOP 1 CITY, LEN(CITY) FROM STATION
ORDER BY LEN(CITY) DESC, CITY DESC;

SELECT TOP 1 CITY, LEN(CITY) FROM STATION
ORDER BY LEN(CITY) ASC, CITY ASC;