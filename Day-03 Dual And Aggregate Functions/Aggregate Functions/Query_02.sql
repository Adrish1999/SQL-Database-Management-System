/*List names of employees who are not managers.*/

SELECT ENAME
FROM university.emp
WHERE JOB NOT LIKE 'Manager';
