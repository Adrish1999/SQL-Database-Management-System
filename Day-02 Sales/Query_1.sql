/*Find the names of all clients having ‘a’ as the second letter in their names.*/

SELECT `Name`
FROM client_master
WHERE `Name` LIKE '_a%';