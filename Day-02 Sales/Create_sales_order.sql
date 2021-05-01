/*Create table sales_order.*/

CREATE TABLE `sales_order` (
	`Order_no` VARCHAR(6) NOT NULL,
	`Order_date` DATE NULL DEFAULT NULL,
	`Client_no` VARCHAR(6) NOT NULL,
	`Dely_address` VARCHAR(25) NULL DEFAULT NULL,
	`Salesman_no` VARCHAR(6) NOT NULL,
	`Dely_type` CHAR(1) NOT NULL DEFAULT 'F',
	`Billed_yn` CHAR(1) NULL DEFAULT NULL,
	`Dely_date` DATE NOT NULL,
	`Order_status` VARCHAR(10) NOT NULL,
	PRIMARY KEY (`Order_no`),
	INDEX `FK__client_master` (`Client_no`),
	INDEX `FK__salesman_master` (`Salesman_no`),

	CONSTRAINT `FK__client_master` FOREIGN KEY (`Client_no`) REFERENCES `sales`.`client_master` (`Client_no`) ON UPDATE CASCADE ON DELETE CASCADE,

	CONSTRAINT `FK__salesman_master` FOREIGN KEY (`Salesman_no`) REFERENCES `sales`.`salesman_master` (`Salesman_no`) ON UPDATE CASCADE ON DELETE CASCADE,

	CONSTRAINT `SO1` CHECK ((`Dely_date` > `Order_date`)),
	CONSTRAINT `SO2` CHECK ((`Order_status` in ('in  process','fulfilled','backorder','cancelled')))
);
