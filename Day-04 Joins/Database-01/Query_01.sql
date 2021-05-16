/*Find the color of boats reserved by ‘Tarun’.*/

SELECT boats.color
FROM boats
WHERE boats.b_id IN (SELECT reserves.b_id
							FROM reserves
							WHERE reserves.s_id = (SELECT sailors.s_id
															FROM sailors
															WHERE sailors.s_name LIKE 'Tarun'));
		