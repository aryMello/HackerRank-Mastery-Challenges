/* Using - MS SQL SERVER

P(R) represents a pattern drawn by Julia in R rows. 
The following pattern represents P(5):
*****
****
***
**
*
Write a query to print the pattern P(20)
*/
DECLARE @var INT
SELECT @var = 20
WHILE @var > 0
    BEGIN
        PRINT REPLICATE('* ', @var)
    SET @var = @var - 1
    END