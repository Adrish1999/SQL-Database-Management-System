/*Display the name of the department in which 'FORD' works.*/

SELECT T2.DNAME
FROM `office`.dept T2
WHERE T2.DNO = (SELECT T1.DEPTNO FROM `office`.emp T1 WHERE T1.ENAME LIKE 'Ford');
