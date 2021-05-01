/* Print the information from sales_order table for orders placed in the month of January. */

SELECT *
FROM sales_order
WHERE MONTH(Order_date) = '01';
