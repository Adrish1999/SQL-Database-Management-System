/*Find the sailor_id’s and sailor_names who have reserved boats on ‘Monday’.*/

SELECT sailors.s_id 'Sailor ID', sailors.s_name 'Sailor Name'
FROM sailors
WHERE sailors.s_id IN (SELECT reserves.s_id
								FROM reserves
								WHERE reserves.`day` LIKE 'Monday');
