/*Select all country names from Supplier Table which don’t have any customer in customer table from its own country.*/

SELECT T1.Country
FROM `sales`.suppliers T1
WHERE NOT EXISTS (SELECT * FROM `sales`.customers T2 WHERE T2.Country = T1.Country);
