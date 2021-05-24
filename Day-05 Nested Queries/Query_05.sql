/*Get CNAME & ENAME pairs such the customer with name CNAME has placed and ordered through the employees with name ENAME.*/

SELECT T2.CNAME 'CNAME', T1.ENAME 'ENAME'
FROM `mail-order`.employees T1, `mail-order`.customers T2
WHERE T1.ENO IN (SELECT DISTINCT T3.ENO
				 FROM `mail-order`.orders T3
				 WHERE T3.CNO = T2.CNO);
