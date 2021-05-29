/*Display the name of the department whose salary is maximum.*/

SELECT T2.DNO ,T2.DNAME
FROM `office`.dept T2
WHERE T2.DNO = (SELECT T1.DEPTNO
					 FROM `office`.emp T1
					 WHERE T1.SAL = (SELECT MAX(SAL) FROM `office`.emp));
