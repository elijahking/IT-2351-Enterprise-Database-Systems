-- *************************************************************
-- fetch order totals for each order for each customer
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT c.email_address, o.order_id ,(o.ship_amount 
    + o.tax_amount + SUM((i.item_price - i.discount_amount) * i.quantity)
) AS order_totoal
FROM customers c
INNER JOIN orders o ON o.customer_id = c.customer_id
INNER JOIN order_items i ON i.order_id = o.order_id
WHERE o.customer_id = c.customer_id
AND i.order_id = o.order_id
GROUP BY c.email_address, o.order_id, i.order_id
