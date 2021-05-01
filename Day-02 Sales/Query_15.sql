/* Display the order number and day on which clients placed their order. */

SELECT Order_no, Client_no, DAY(Order_date), DAYNAME(Order_date)
FROM sales_order;
