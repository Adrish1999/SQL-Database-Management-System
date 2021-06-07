/*Select all Customer name and supplier name from "Customers" and "Suppliers" tables where city name is common in both.*/

SELECT T1.CustomerName, T2.SupplierName
FROM `sales`.customers T1, `sales`.suppliers T2
WHERE T1.City = T2.City;
