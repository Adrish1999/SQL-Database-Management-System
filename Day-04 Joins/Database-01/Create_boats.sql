CREATE TABLE `boats` (
`b_id` VARCHAR(10) NOT NULL,
`b_name` VARCHAR(15) NOT NULL,
`color` VARCHAR(10) NOT NULL,
PRIMARY KEY (`b_id`) USING BTREE,
CONSTRAINT `CB1` CHECK ((`b_id` like 'B%'))
);
