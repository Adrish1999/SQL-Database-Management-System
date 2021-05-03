/* Display the order information for client_no 'C00001' and 'C00002'. */

SELECT *
FROM sales_order
WHERE Client_no IN ('C00001','C00002');
