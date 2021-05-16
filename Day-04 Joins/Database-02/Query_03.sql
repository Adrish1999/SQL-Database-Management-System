/*Find out all the students who stay in ‘Kolkata’ and whose roll number is between 5 and 8.*/

SELECT *
FROM `college`.student
WHERE student.City LIKE 'Kolkata' AND student.Rollno BETWEEN 5 AND 8;
