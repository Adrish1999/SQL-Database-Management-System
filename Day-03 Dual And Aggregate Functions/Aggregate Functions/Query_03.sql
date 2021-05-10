/*Display the highest, lowest, Sum and average of all employees. Label the columns as "Maximum" "Minimum" "Total" and "Average".*/

SELECT MAX(SAL) "MAXIMUM", MIN(SAL) "MINIMUM", SUM(SAL) "TOTAL", AVG(SAL) "AVERAGE"
FROM university.emp;
