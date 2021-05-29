/*Display the name of the department which has no employee.*/

SELECT T1.DNAME
FROM `office`.dept T1
WHERE NOT EXISTS (SELECT * FROM `office`.emp T2 WHERE T2.DEPTNO = T1.DNO);
