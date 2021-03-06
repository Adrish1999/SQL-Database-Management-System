CREATE TABLE `customer` (
`CUSTOMER_ID` INT(10) NOT NULL,
`CUSTOMER_NAME` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
`CITY` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
`GRADE` INT(10) NOT NULL,
`SALESMAN_ID` INT(10) NOT NULL,
PRIMARY KEY (`CUSTOMER_ID`) USING BTREE,
INDEX `FK__salesman` (`SALESMAN_ID`) USING BTREE,
CONSTRAINT `FK__salesman` FOREIGN KEY (`SALESMAN_ID`) REFERENCES
`order`.`salesman` (`SALESMAN_ID`) ON UPDATE NO ACTION ON DELETE NO ACTION
);
