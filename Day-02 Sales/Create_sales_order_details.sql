/*Create table sales_order_details.*/

CREATE TABLE `sales_order_details` (
	`Order_no` VARCHAR(6) NOT NULL,
	`Product_no` VARCHAR(6) NOT NULL,
	`Qty_ordered` INT(10) NULL DEFAULT NULL,
	`Qty_disp` INT(10) NULL DEFAULT NULL,
	`Product_rate` DECIMAL(10,2) NULL DEFAULT NULL,
	PRIMARY KEY (`Order_no`, `Product_no`),
	INDEX `FK4` (`Product_no`),

	CONSTRAINT `FK3` FOREIGN KEY (`Order_no`) REFERENCES `sales`.`sales_order` (`Order_no`) ON UPDATE CASCADE ON DELETE CASCADE,

	CONSTRAINT `FK4` FOREIGN KEY (`Product_no`) REFERENCES `sales`.`product_master` (`Product_no`) ON UPDATE CASCADE ON DELETE CASCADE
);
