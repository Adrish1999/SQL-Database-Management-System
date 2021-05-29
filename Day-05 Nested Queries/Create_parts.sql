CREATE TABLE `parts` (
	`PNO` INT(10) NOT NULL,
	`PNAME` VARCHAR(30) NOT NULL,
	`QOH` INT(10) NOT NULL,
	`PRICE` DECIMAL(6,2) NOT NULL,
	`LEVEL` INT(10) NOT NULL,
	PRIMARY KEY (`PNO`) USING BTREE,
	CONSTRAINT `CC1` CHECK ((`QOH` >= 0)),
	CONSTRAINT `CC2` CHECK ((`PRICE` >= 0.0))
);