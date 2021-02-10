-- *************************************************************
-- Assignment1Part3F
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT 
	customer_id AS 'Customer ID',
    order_date AS 'Order Date',
    shipped_date AS 'Shipped Date',
    shipped_date - order_date AS Days_to_Ship
FROM orders
ORDER BY customer_id, Days_to_Ship