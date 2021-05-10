/*Display the name of employee who earns minimum salary and whose job is clerk.*/

SELECT ENAME
FROM university.emp
WHERE SAL = (SELECT MIN(SAL) FROM university.emp WHERE JOB LIKE 'Clerk');
