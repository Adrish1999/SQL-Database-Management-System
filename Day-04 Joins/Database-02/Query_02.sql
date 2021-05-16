/*Rename the subject ‘DBMS’ to ‘RDBMS’.*/

UPDATE subject
SET  subject.Subtitle = 'RDBMS'
WHERE subject.Subtitle LIKE 'DBMS';

SELECT *
FROM subject;
