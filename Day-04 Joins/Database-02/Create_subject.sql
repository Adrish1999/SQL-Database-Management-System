CREATE TABLE `subject` (
`Subno` VARCHAR(10) NOT NULL,
`Subtitle` VARCHAR(20) NOT NULL,
PRIMARY KEY (`Subno`) USING BTREE,
CONSTRAINT `CS1` CHECK ((`Subno` like 'S%'))
);
