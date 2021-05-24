/*Get all the details of customers whose names begin with the letter S.*/

SELECT *
FROM `mail-order`.customers
WHERE `mail-order`.customers.CNAME LIKE 'S%';
