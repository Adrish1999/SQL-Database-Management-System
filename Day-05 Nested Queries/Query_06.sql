/*Get the name of employees who was hired on the earliest date.*/

SELECT T1.ENAME 'ENAME', temp.Earliest_Date 'EARLIEST HIRE DATE'
FROM `mail-order`.employees T1, (SELECT MIN(`mail-order`.employees.HDATE) 'Earliest_Date' 
								 FROM `mail-order`.employees) temp
WHERE T1.HDATE = temp.Earliest_Date;
