/*Display the name of the city(location) in which 'SMITH' works.*/

SELECT T2.LOC
FROM `office`.dept T2
WHERE T2.DNO = (SELECT DEPTNO FROM `office`.emp WHERE ENAME LIKE 'Smith');
