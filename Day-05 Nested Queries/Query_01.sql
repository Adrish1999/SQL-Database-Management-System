/*1.	Get PNO & PNAME values of parts that are priced less than 20.*/

SELECT `mail-order`.parts.PNO 'PNO', `mail-order`.parts.PNAME 'PNAME', `mail-order`.parts.PRICE 'PRICE'
FROM `mail-order`.parts
WHERE `mail-order`.parts.PRICE < 20;
