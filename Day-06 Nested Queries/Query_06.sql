/*List the name of employee who joined after ALLEN.*/

SELECT T1.ENAME
FROM `office`.emp T1
WHERE T1.HIREDATE > (SELECT HIREDATE FROM `office`.emp WHERE ENAME LIKE 'Allen');