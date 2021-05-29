/*Display the name of the city in which the manager works.*/

SELECT T2.LOC 'CITY'
FROM `office`.dept T2
WHERE T2.DNO IN (SELECT DEPTNO FROM `office`.emp WHERE JOB LIKE 'Manager');
