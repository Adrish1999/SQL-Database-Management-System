/*Get the ENO values of employees from city "Mumbai".*/

SELECT T1.ENO 'EMPLOYEE NO'
FROM `mail-order`.employees T1
WHERE T1.ZIP IN (SELECT ZIP FROM `mail-order`.zipcodes WHERE CITY LIKE 'Mumbai');
