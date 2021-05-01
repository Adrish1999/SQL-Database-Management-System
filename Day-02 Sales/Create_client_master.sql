/*Create table client_master.*/

CREATE TABLE `client_master` (
	`Client_no` VARCHAR(6) NOT NULL,
	`Name` VARCHAR(20) NOT NULL,
	`City` VARCHAR(15) NULL DEFAULT NULL,
	`Pincode` INT(10) NULL DEFAULT NULL,
	`State` VARCHAR(15) NULL DEFAULT NULL,
	`Bal_due` DECIMAL(10,2) NULL DEFAULT NULL,
	PRIMARY KEY (`Client_no`),
	CONSTRAINT `CC1` CHECK ((`Client_no` like 'C%'))
);
