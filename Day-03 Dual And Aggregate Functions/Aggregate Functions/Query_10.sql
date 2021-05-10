/*Display the name of the department whose salary is maximum.*/

SELECT DEPT_NAME
FROM university.emp
WHERE SAL = (SELECT MAX(SAL) FROM university.emp);
