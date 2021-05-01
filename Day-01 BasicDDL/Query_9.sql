/*Change the data type of attribute Job from char to varchar2.*/

ALTER TABLE emp
MODIFY COLUMN JOB VARCHAR(50);

DESC emp;