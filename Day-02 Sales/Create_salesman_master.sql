/*Create table salesman_master.*/

CREATE TABLE `salesman_master` (
	`Salesman_no` VARCHAR(6) NOT NULL,
	`Salesman_name` VARCHAR(20) NOT NULL,
	`Address1` VARCHAR(10) NOT NULL,
	`Address2` VARCHAR(10) NULL DEFAULT NULL,
	`City` VARCHAR(20) NULL DEFAULT NULL,
	`Pincode` INT(10) NULL DEFAULT NULL,
	`State` VARCHAR(20) NULL DEFAULT NULL,
	`Sal_amt` DECIMAL(8,2) NOT NULL,
	`Tgt_to_get` DECIMAL(6,2) NOT NULL,
	`Ytd_sales` DECIMAL(6,2) NOT NULL,
	`Remarks` VARCHAR(20) NULL DEFAULT '',
	PRIMARY KEY (`Salesman_no`),
	CONSTRAINT `SC1` CHECK ((`Salesman_no` like 'S%')),
	CONSTRAINT `SC2` CHECK ((`Sal_amt` > 0)),
	CONSTRAINT `SC3` CHECK ((`Tgt_to_get` > 0))
);
