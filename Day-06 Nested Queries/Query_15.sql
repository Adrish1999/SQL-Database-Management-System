/*List the name of the department who gets commission.*/

SELECT T1.DNAME
FROM `office`.dept T1
WHERE EXISTS (SELECT * FROM `office`.emp T2 WHERE T2.DEPTNO = T1.DNO AND T2.COMM IS NOT NULL);
