/*Select all cities from the "Customers" and "Suppliers" tables.*/

SELECT T1.City
FROM `sales`.customers T1

UNION ALL

SELECT T2.City
FROM `sales`.suppliers T2;
