/*Delete all the sailors information whose age is greater than 60.*/

ALTER TABLE reserves
DROP FOREIGN KEY FK__sailors;

DELETE
FROM sailors
WHERE sailors.age > 60;
