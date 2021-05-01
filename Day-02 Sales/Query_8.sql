/* Find products whose selling price is more than 1500. Calculate a new selling price as original selling price * .15. Rename the new column in the above query as new_price.*/

SELECT *, Sell_price*0.15 `New_price`
FROM product_master
WHERE Sell_price > 500;
