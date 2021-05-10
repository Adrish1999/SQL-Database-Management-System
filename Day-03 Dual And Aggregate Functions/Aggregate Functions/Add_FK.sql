/*Add foreign key to emp.*/

ALTER TABLE university.emp
ADD CONSTRAINT FK_MGR
FOREIGN KEY (MGR) REFERENCES university.emp(EMPNO);
