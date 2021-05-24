/*Get the total quantity of parts 10601 that has been ordered.*/

SELECT SUM(T1.QTY) 'TOTAL 10601 PARTS'
FROM `mail-order`.odetails T1
WHERE T1.PNO = 10601;
