/*Modify-the above query to display the highest, lowest, sum and average salary for each job type.*/

SELECT JOB, MAX(SAL) "MAXIMUM", MIN(SAL) "MINIMUM", SUM(SAL) "TOTAL", AVG(SAL) "AVERAGE"
FROM university.emp
GROUP BY JOB;
