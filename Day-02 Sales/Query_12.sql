/* Determine the maximum and minimum product prices. Rename the output as max_price and min_price respectively. */

SELECT MAX(Sell_price) `Max_price`, MIN(Sell_price) `Min_price`
FROM product_master;
