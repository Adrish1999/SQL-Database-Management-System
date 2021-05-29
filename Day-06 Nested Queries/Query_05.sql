/*List the name of the employee whose salary is more than 'TURNER'.*/

SELECT T1.ENAME
FROM `office`.emp T1
WHERE T1.SAL > (SELECT SAL FROM `office`.emp WHERE ENAME LIKE 'Turner');
