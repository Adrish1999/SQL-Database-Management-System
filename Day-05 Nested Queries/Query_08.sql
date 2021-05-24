/*For each part, get PNO & PNAME values along with total sales. */

SELECT T2.PNO 'PNO', T2.PNAME 'PNAME', SUM(T1.QTY * T2.PRICE) 'TOTAL SALES'
FROM `mail-order`.odetails T1, `mail-order`.parts T2
WHERE T1.PNO = T2.PNO
GROUP BY T2.PNO, T2.PNAME;
