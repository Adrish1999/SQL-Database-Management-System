/* List the titles of all movies directed by 'Hitchcock'.*/

SELECT T1.MOV_TITLE
FROM `movie`.movies T1
WHERE T1.DIR_ID = (SELECT T2.DIR_ID FROM `movie`.director T2 WHERE T2.DIR_NAME = 'HITCHCOCK');
