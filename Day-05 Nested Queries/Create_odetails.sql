CREATE TABLE `odetails` (
	`ONO` INT(10) NULL DEFAULT NULL,
	`PNO` INT(10) NULL DEFAULT NULL,
	`QTY` INT(10) NULL DEFAULT NULL,
	INDEX `FK__orders` (`ONO`) USING BTREE,
	INDEX `FK__parts` (`PNO`) USING BTREE,
	CONSTRAINT `FK__orders` FOREIGN KEY (`ONO`) REFERENCES `mail-order`.`orders` (`ONO`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK__parts` FOREIGN KEY (`PNO`) REFERENCES `mail-order`.`parts` (`PNO`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `CO1` CHECK ((`QTY` > 0))
);