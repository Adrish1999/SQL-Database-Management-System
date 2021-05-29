/*List the name of the employee who joined in the same date of 'ADAM'.*/

SELECT T1.ENAME
FROM `office`.emp T1
WHERE T1.HIREDATE = (SELECT HIREDATE FROM `office`.emp WHERE ENAME LIKE 'Adam');
