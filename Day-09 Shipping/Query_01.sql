/*Give names of customer who have sent packages (shipments) to Kolkata, Chennai and Mumbai.*/

SELECT T2.CUST_NAME
FROM `shipping`.customer T2
WHERE T2.CUST_ID IN (SELECT T1.CUST_ID FROM `shipping`.shipment T1 WHERE T1.DESTINATION IN ('Kolkata','Chennai','Mumbai'));
