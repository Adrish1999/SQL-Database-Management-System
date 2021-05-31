/*Find the movie names where one or more actors acted in two or more movies.*/

SELECT M.MOV_TITLE
FROM `movie`.movies M,`movie`.movie_cast MV
WHERE M.MOV_ID=MV.MOV_ID AND MV.ACT_ID IN (SELECT ACT_ID
														 FROM `movie`.movie_cast GROUP BY ACT_ID
														 HAVING COUNT(ACT_ID) > 1)
GROUP BY M.MOV_TITLE
HAVING COUNT(*) > 1;
