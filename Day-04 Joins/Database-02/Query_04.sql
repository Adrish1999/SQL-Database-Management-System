/*Display all the students’ information in descending order of their roll number who stay in ‘Kolkata’*/

SELECT *
FROM `college`.`student`
WHERE student.City LIKE 'Kolkata'
ORDER BY student.Rollno DESC;
