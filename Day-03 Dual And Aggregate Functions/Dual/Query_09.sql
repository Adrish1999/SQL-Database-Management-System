/*Display the number of months between ‘02-JAN-01' and '02-JUL-01'.*/

SELECT TIMESTAMPDIFF(MONTH, '2012-01-02', '2012-07-02') `Month_difference`
FROM DUAL;
