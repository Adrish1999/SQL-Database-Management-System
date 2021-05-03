/* Find out the clients who stay in a city whose second letter is 'a'. */

SELECT *
FROM client_master
WHERE City LIKE '_a%';
