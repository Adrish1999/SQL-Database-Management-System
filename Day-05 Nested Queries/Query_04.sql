/*Get the ONO & CNAME values for customers whose orders have not yet been shipped.*/

SELECT T2.ONO 'ONO', T1.CNAME 'CNAME'
FROM `mail-order`.customers T1 JOIN `mail-order`.orders T2
ON T1.CNO = T2.CNO
WHERE T2.SHIPPED IS NULL;
