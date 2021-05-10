/*Display the name of employee who earns maximum salary whose job is salesman.*/

SELECT ENAME
FROM university.emp
WHERE SAL = (SELECT MAX(SAL) FROM university.emp WHERE JOB LIKE 'Salesman');
