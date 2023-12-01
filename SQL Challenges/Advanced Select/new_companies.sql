/* Using - MS SQL SERVER

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
Founder > Lead Manager > Senior Manager > Manager > Employee

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, 
total number of senior managers, total number of managers, and total number of employees. 
Order your output by ascending company_code
*/
SELECT C.COMPANY_CODE, C.FOUNDER,
       COUNT(DISTINCT L.LEAD_MANAGER_CODE),
       COUNT(DISTINCT S.SENIOR_MANAGER_CODE),
       COUNT(DISTINCT M.MANAGER_CODE),
       COUNT(DISTINCT E.EMPLOYEE_CODE)
FROM COMPANY AS C 
JOIN LEAD_MANAGER AS L
    ON C.COMPANY_CODE = L.COMPANY_CODE
JOIN SENIOR_MANAGER AS S
    ON L.LEAD_MANAGER_CODE = S.LEAD_MANAGER_CODE
JOIN MANAGER AS M 
    ON M.SENIOR_MANAGER_CODE = S.SENIOR_MANAGER_CODE
JOIN EMPLOYEE AS E
    ON E.MANAGER_CODE = M.MANAGER_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE;