/*Display the name of employee who earns minimum salary and whose job is clerk.*/

SELECT T1.ENAME, T1.SAL
FROM `office`.emp T1
WHERE T1.SAL = (SELECT MIN(SAL) FROM `office`.emp T2 WHERE T2.JOB LIKE 'Clerk');
