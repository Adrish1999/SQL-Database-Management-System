/*Display the department whose average salary is maximum.*/

SELECT T2.DNO, T2.DNAME, T3.MAX_AVG_SALARY
FROM `office`.dept T2 , (SELECT T1.DNO, MAX(T1.AVGSAL) 'MAX_AVG_SALARY'
				 				 FROM (SELECT DEPTNO DNO, AVG(SAL) AVGSAL FROM `office`.emp  GROUP BY DEPTNO) T1) T3
WHERE T2.DNO = T3.DNO;


/*
Alternate Query:

SELECT T2.DNAME
FROM `office`.dept T2
WHERE T2.DNO = (SELECT T1.DEPTNO
FROM `office`.emp T1
GROUP BY T1.DEPTNO
HAVING AVG(T1.SAL) >= ALL (SELECT AVG(SAL) FROM `office`.emp GROUP BY DEPTNO));
*/