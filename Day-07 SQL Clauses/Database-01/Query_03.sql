/*List all actors who acted in a movie before 2000 and also in a movie after 2015 (use JOIN operation).*/

SELECT `movie`.actor.ACT_NAME
FROM `movie`.actor
WHERE `movie`.actor.ACT_ID = 
(SELECT T2.ACT_ID
FROM `movie`.movie_cast T2 JOIN (SELECT T1.MOV_ID 'MovieID' FROM `movie`.movies T1 WHERE T1.MOV_YEAR < 2000) T3
ON T2.MOV_ID = T3.MovieID
WHERE T2.ACT_ID IN 
(SELECT T4.ACT_ID 
 FROM `movie`.movie_cast T4 JOIN (SELECT T5.MOV_ID 'MovieID' FROM `movie`.movies T5 WHERE T5.MOV_YEAR > 2015) T6
 ON T4.MOV_ID = T6.MovieID));
 