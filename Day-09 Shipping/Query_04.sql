/*For each customer, what is the average weight of package sent by that customer.*/

SELECT T2.CUST_NAME 'Customer_Name' , T3.Average_Weight
FROM `shipping`.customer T2, (SELECT T1.CUST_ID 'Cust_id', AVG(T1.WEIGHT) 'Average_Weight' FROM `shipping`.shipment T1 GROUP BY T1.CUST_ID) T3
WHERE T2.CUST_ID = T3.Cust_id;
