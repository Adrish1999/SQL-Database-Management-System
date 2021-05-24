/*Retrieve the part number, part name and price of parts with price greater than 2000 in an ascending order of part number.*/

SELECT T1.PNO 'PART NO', T1.PNAME 'PART NAME', T1.PRICE*T1.QOH 'PART PRICE'
FROM `mail-order`.parts T1
WHERE (T1.PRICE * T1.QOH) > 2000
ORDER BY T1.PNO;
