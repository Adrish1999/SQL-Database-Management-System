/*List the names of employees whose names have " i"  as the second character .*/

SELECT ENAME
FROM university.emp
WHERE ENAME LIKE '_i%';
