/* Using - MS SQL SERVER

Find the difference between the total number of CITY entries in the table 
and the number of distinct CITY entries in the table.
*/
SELECT Count(CITY) - Count(DISTINCT CITY) FROM STATION;