/*Display lexicographically smallest and largest employee name starting with letter 'A'.*/

SELECT MIN(ENAME), MAX(ENAME)
FROM emp
WHERE ENAME LIKE 'A%';