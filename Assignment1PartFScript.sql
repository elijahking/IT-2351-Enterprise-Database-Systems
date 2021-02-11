-- *************************************************************
-- Assignment1Part3F
-- Practice Aliasing and DATEDIFF function
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT 
	customer_id AS 'Customer ID',
    order_date AS 'Order Date',
    shipped_date AS 'Shipped Date',
    DATEDIFF(shipped_date, order_date) AS Days_to_Ship
FROM orders
ORDER BY customer_id, Days_to_Ship