/*Select all German cities from the "Customers" and "Suppliers" tables.*/

SELECT T1.City
FROM `sales`.customers T1
WHERE T1.Country LIKE 'Germany'

UNION ALL

SELECT T2.City
FROM `sales`.suppliers T2
WHERE T2.Country LIKE 'Germany';
