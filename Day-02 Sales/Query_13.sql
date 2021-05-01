/* Count the number of products having price greater than or equal to 500. */

SELECT COUNT(*) `Order_count`
FROM product_master
WHERE Sell_price >= 500;
