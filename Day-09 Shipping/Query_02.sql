/*List the names of the driver who have delivered shipments weighing over 200 kilos.*/

SELECT T2.DRIVER_NAME
FROM `shipping`.truck T2
WHERE T2.TRUCK_NO IN (SELECT T1.TRUCK_NO FROM `shipping`.shipment T1 WHERE T1.WEIGHT > 200);
