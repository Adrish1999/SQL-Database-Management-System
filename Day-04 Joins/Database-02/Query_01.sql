/*Get the names of all the teachers of Physics department who teach Thermodynamics.*/

SELECT teacher.Name
FROM teacher,taughtby
WHERE teacher.Tid = taughtby.Tid AND teacher.Dept LIKE 'Physics' AND  taughtby.Subno = (SELECT subject.Subno
																		 											 FROM subject
																		 											 WHERE subject.Subtitle LIKE 'Thermodynamics');