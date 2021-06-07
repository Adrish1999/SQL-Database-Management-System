/*Selects all the different cities (only distinct values) from the "Customers" and the "Suppliers" tables.*/

SELECT DISTINCT T1.City
FROM `sales`.customers T1

UNION

SELECT DISTINCT T2.City
FROM `sales`.suppliers T2;
