/*Find the title of movies and number of stars for each movie that has at least one rating and find the highest number of stars that movie received.*/

SELECT T2.MOV_TITLE, T3.MAX_STARS
FROM `movie`.movies T2, (SELECT DISTINCT T1.MOV_ID 'MovieID', MAX(T1.REV_STARS) 'MAX_STARS' FROM `movie`.rating T1 GROUP BY T1.MOV_ID HAVING COUNT(*) > 0) T3
WHERE T2.MOV_ID = T3.MovieID
ORDER BY T2.MOV_TITLE;
