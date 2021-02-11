-- *************************************************************
-- Assignment1Part3H
-- practice Date_Format function
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT 
	customer_id AS 'Customer ID',
    DATE_FORMAT(order_date, "%m/%d/%y") AS 'Order Date',
    DATE_FORMAT(shipped_date, "%m/%d/%y") AS 'Shipped Date',
    DATEDIFF(shipped_date, order_date) AS Days_to_Ship
FROM orders
ORDER BY customer_id, Days_to_Ship