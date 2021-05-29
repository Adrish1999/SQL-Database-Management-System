/*List the employees who earns more than every employee in 'DALLAS'.*/

SELECT T2.ENAME
FROM `office`.emp T2
WHERE T2.SAL > ALL (SELECT T1.SAL
						  FROM `office`.emp T1
						  WHERE T1.DEPTNO = (SELECT DNO FROM `office`.dept WHERE LOC LIKE 'Dallas'));
