/*Add 5 months to the present date and print the output.*/

SELECT DATE_ADD(CURDATE(),INTERVAL 5 MONTH) `New_date`
FROM DUAL;
