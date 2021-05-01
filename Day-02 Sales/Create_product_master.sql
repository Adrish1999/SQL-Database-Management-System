/*Create table product_master/*/

CREATE TABLE `product_master` (
	`Product_no` VARCHAR(6) NOT NULL,
	`Description` VARCHAR(15) NOT NULL,
	`Profit_percent` DECIMAL(4,2) NOT NULL,
	`Unit_measure` VARCHAR(10) NOT NULL,
	`Qty_on_hand` INT(10) NOT NULL,
	`Reorder_lvl` INT(10) NOT NULL,
	`Sell_price` DECIMAL(8,2) NOT NULL,
	`Cost_price` DECIMAL(8,2) NOT NULL,
	PRIMARY KEY (`Product_no`),
	CONSTRAINT `PC1` CHECK ((`Product_no` like 'P%')),
	CONSTRAINT `PC2` CHECK ((`Sell_price` > 0)),
	CONSTRAINT `PC3` CHECK ((`Cost_price` > 0))
);
