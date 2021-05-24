/*Get PNO values for parts for which orders have been placed.*/

SELECT T1.PNO 'PNO'
FROM `mail-order`.parts T1
WHERE EXISTS (SELECT *
			  FROM `mail-order`.odetails T2
			  WHERE T1.PNO = T2.PNO);
