/*Create table emp.*/

CREATE TABLE `emp` (
	`EMPNO` INT(10) NOT NULL,
	`ENAME` VARCHAR(50) NOT NULL,
	`JOB` CHAR(50) NOT NULL,
	`MGR` INT(10) NULL DEFAULT NULL,
	`HIREDATE` DATE NOT NULL,
	`SAL` INT(10) NOT NULL,	
	`COMM` INT(10) NULL DEFAULT NULL,
	`DEPTNO` INT(10) NOT NULL,
	PRIMARY KEY (`EMPNO`),
	INDEX `FK_emp_dept` (`DEPTNO`),
	CONSTRAINT `FK_emp_dept` FOREIGN KEY (`DEPTNO`) REFERENCES `office`.`dept` (`DNO`) ON UPDATE CASCADE ON DELETE CASCADE
);
