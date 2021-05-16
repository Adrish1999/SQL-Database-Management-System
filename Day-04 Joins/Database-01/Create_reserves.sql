CREATE TABLE `reserves` (
`s_id` VARCHAR(10) NULL DEFAULT NULL,
`b_id` VARCHAR(10) NULL DEFAULT NULL,
`day` VARCHAR(15) NULL DEFAULT NULL,
INDEX `FK__sailors` (`s_id`) USING BTREE,
INDEX `FK__boats` (`b_id`) USING BTREE,
CONSTRAINT `FK__boats` FOREIGN KEY (`b_id`) REFERENCES `navy`.`boats`
(`b_id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT `FK__sailors` FOREIGN KEY (`s_id`) REFERENCES
`navy`.`sailors` (`s_id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);