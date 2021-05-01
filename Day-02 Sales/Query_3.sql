/* Find the list of all clients who stay in 'Mumbai' or 'Delhi' */

SELECT *
FROM client_master
WHERE City IN ('Mumbai','Delhi');