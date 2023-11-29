/* Using - MS SQL SERVER

We define an employee's total earnings to be their (salary x months) monthly worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees 
as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.
*/
SELECT CONCAT(
    (SELECT MAX(MONTHS*SALARY) FROM EMPLOYEE), ' ',
        (SELECT COUNT(*) FROM 
         (SELECT RANK() OVER (ORDER BY MONTHS*SALARY DESC) AS EMPLOYEE_RANK FROM EMPLOYEE) A WHERE A.EMPLOYEE_RANK = 1)
);