/* Using - MS SQL SERVER

Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
Round your answer to decimal places.
*/
SELECT CAST(ROUND((LONG_W), 4) AS NUMERIC(7,4)) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780);