/*Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also be deleted. (Use ON DELETE CASCADE)*/

DELETE FROM `order`.salesman T1 WHERE T1.SALESMAN_ID = 1000;

SELECT * FROM `order`.orders;
