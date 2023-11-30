/* Using - MS SQL SERVER

P(R) represents a pattern drawn by Julia in R rows. 
The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20)
*/
DECLARE @var int, @x int
SELECT @var = 20, @x = 1 
WHILE @x <= 20
    BEGIN
        PRINT SPACE(@var) + REPLICATE('* ', @x) 
        SET @var = @var - 1 
        SET @x = @x + 1 
    END