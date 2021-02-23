-- *************************************************************
-- fetch the customer name (concatenated), city, state, order_date and ship_date for each order
-- join cusomtomers primary key customer_id on orders foreign_key customer_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT 
	CONCAT(c.customer_first_name, ' ', c.customer_last_name) AS 'customer name',
    c.customer_city, c.customer_state, o.order_date, o.shipped_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY c.customer_state, c.customer_city, c.customer_last_name, c.customer_first_name