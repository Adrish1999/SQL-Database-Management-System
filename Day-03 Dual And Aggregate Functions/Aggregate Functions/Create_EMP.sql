CREATE TABLE `emp` (
	`EMPNO` INT(10) NOT NULL,
	`ENAME` VARCHAR(10) NOT NULL,
	`JOB` VARCHAR(50) NOT NULL,
	`MGR` INT(10) NULL DEFAULT NULL,
	`HIREDATE` DATE NOT NULL,
	`SAL` INT(10) NOT NULL DEFAULT 0,
	`COMM` INT(10) NOT NULL DEFAULT 0,
	`DEPT_NAME` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`EMPNO`) USING BTREE,
	INDEX `FK_emp_emp` (`MGR`) USING BTREE,
	CONSTRAINT `FK_emp_emp` FOREIGN KEY (`MGR`) REFERENCES `university`.`emp` (`EMPNO`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `CC1` CHECK ((`EMPNO` between 7000 and 8000)),
	CONSTRAINT `CC2` CHECK ((char_length(`ENAME`) <= 10))
);