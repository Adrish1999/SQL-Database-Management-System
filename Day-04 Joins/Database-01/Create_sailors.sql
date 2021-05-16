CREATE TABLE `sailors` (
`s_id` VARCHAR(10) NOT NULL,
`s_name` VARCHAR(10) NOT NULL,
`rating` DECIMAL(2,1) NOT NULL,
`age` INT(10) NOT NULL,
PRIMARY KEY (`s_id`) USING BTREE,
CONSTRAINT `CC1` CHECK ((`s_id` like 'S%'))
);