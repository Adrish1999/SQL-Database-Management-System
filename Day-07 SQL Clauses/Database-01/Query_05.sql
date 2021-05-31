/*Update rating of all movies directed by 'Steven Spielberg' to 5.*/

UPDATE `movie`.rating T1 
SET T1.REV_STARS = 5
WHERE T1.MOV_ID IN 
(SELECT T2.MOV_ID 
 FROM `movie`.movies T2 
 WHERE T2.DIR_ID = (SELECT DIR_ID FROM `movie`.director WHERE DIR_NAME LIKE 'STEVEN SPIELBERG'));
 
 
SELECT *
FROM `movie`.rating T1
WHERE T1.MOV_ID IN 
(SELECT T2.MOV_ID 
 FROM `movie`.movies T2 
 WHERE T2.DIR_ID = (SELECT DIR_ID FROM `movie`.director WHERE DIR_NAME LIKE 'STEVEN SPIELBERG'));
 