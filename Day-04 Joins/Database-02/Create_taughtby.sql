CREATE TABLE `taughtby` (
`Tid` VARCHAR(10) NULL DEFAULT NULL,
`Subno` VARCHAR(10) NULL DEFAULT NULL,
INDEX `FK__teacher` (`Tid`) USING BTREE,
INDEX `FK__subject` (`Subno`) USING BTREE,
CONSTRAINT `FK__subject` FOREIGN KEY (`Subno`) REFERENCES
`college`.`subject` (`Subno`) ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT `FK__teacher` FOREIGN KEY (`Tid`) REFERENCES
`college`.`teacher` (`Tid`) ON UPDATE NO ACTION ON DELETE NO ACTION
);