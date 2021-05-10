/*List the name of the employees whose salary is more than 'TURNER'.*/

SELECT ENAME
FROM university.emp
WHERE SAL > (SELECT SAL FROM university.emp WHERE ENAME LIKE 'Turner');
