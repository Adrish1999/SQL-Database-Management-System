/*List all salesmen and indicate those who have and don’t have customers in their cities (Use UNION operation).*/

SELECT T1.SALESMAN_ID, T1.NAME, 'HAVE'
FROM `order`.salesman T1
WHERE EXISTS (SELECT * FROM `order`.customer T2 WHERE T2.SALESMAN_ID = T1.SALESMAN_ID AND T2.CITY = T1.CITY)

UNION

SELECT T1.SALESMAN_ID, T1.NAME, 'DO NOT HAVE'
FROM `order`.salesman T1
WHERE NOT EXISTS (SELECT * FROM `order`.customer T2 WHERE T2.SALESMAN_ID = T1.SALESMAN_ID AND T2.CITY = T1.CITY);
