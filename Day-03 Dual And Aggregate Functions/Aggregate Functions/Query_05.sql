/*Determine the number of managers. Label the column "Number of managers".*/

SELECT COUNT(*) Number_of_Managers
FROM university.emp 
WHERE JOB LIKE 'Manager';
