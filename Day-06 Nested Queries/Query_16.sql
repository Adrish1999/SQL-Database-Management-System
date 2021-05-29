/*List the employees who earn the lowest salary in their respective department.*/

SELECT T3.ENAME, T3.SAL, T3.DEPTNO
FROM `office`.emp T3, (SELECT T1.DEPTNO 'DNO', MIN(T1.SAL) 'MSAL'
							  FROM `office`.emp T1
							  GROUP BY T1.DEPTNO) T2
WHERE T3.DEPTNO = T2.DNO AND T3.SAL = T2.MSAL
ORDER BY T3.DEPTNO;
