/*Add a new attribute Phone No.*/

ALTER TABLE emp ADD (PHONE VARCHAR(50) NULL DEFAULT NULL);

SELECT *
FROM emp;