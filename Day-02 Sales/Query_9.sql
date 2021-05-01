/* List the names, city and state of clients who are not in the state of 'Maharashtra'. */

SELECT `Name`, `City`, `State`
FROM client_master
WHERE `State` NOT IN ('Maharashtra');
