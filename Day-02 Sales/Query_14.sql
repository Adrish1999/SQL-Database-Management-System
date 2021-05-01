/* Find all the products whose qty_on_hand is less than reorder level. */

SELECT *
FROM product_master
WHERE Qty_on_hand < Reorder_lvl;
