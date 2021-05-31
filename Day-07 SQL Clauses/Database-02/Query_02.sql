/*Find the name and numbers of all salesmen who had more than one customer.*/

SELECT T2.NAME, T3.CUST_COUNT
FROM `order`.salesman T2 JOIN (SELECT T1.SALESMAN_ID 'SID', COUNT(T1.CUSTOMER_ID) 'CUST_COUNT' FROM `order`.customer T1 GROUP BY T1.SALESMAN_ID HAVING COUNT(T1.CUSTOMER_ID) > 1) T3
ON T2.SALESMAN_ID = T3.SID;
