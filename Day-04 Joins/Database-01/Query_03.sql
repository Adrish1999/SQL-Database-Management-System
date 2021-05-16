/*List boat_id’s and boat names for ‘red’ and ‘green’ colors only.*/

SELECT boats.b_id 'Boat ID', boats.b_name 'Boat Name'
FROM boats
WHERE boats.color IN ('red','green');
