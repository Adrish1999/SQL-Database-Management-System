/*Display the name of employee who earns maximum salary.*/

SELECT T1.ENAME, T1.SAL
FROM `office`.emp T1
WHERE T1.SAL = (SELECT MAX(SAL) FROM `office`.emp);
