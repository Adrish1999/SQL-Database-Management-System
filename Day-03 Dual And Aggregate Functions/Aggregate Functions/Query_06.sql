/*Find the employees who were hired after '01-jan-1980'.*/

SELECT ENAME
FROM university.emp
WHERE HIREDATE > '1980-01-01';
