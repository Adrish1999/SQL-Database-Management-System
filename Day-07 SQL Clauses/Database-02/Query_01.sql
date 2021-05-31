/*Count the customers with grades above Bangalore's average.*/

SELECT COUNT(*)
FROM `order`.customer T2
WHERE T2.CITY NOT LIKE 'BANGALORE' AND T2.GRADE > (SELECT AVG(T1.GRADE) FROM `order`.customer T1 WHERE T1.CITY LIKE 'BANGALORE');
