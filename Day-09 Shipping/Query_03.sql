/*Retrieve the maximum and minimum weights of the shipments. Rename the output as "Max_Weight" and "Min_ Weight" respectively.*/

SELECT T1.SHIPMENT_NO 'Shipment_No', (T1.WEIGHT) 'Max_Weight', MIN(T1.WEIGHT) 'Min_Weight'
FROM `shipping`.shipment T1
GROUP BY T1.SHIPMENT_NO;
