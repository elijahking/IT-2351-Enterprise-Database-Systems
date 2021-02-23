-- *************************************************************
-- fetch the customer name, order_date, artist and order_qty for each order
-- join order details primary/foreign key order_id on orders primary key order_id
-- join item primary key item_id on order details primary/foreign key item_id
-- join customers primary key customer_id on orders foreign key customer_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT CONCAT(c.customer_first_name, ' ', c.customer_last_name) AS 'customer name',
o.order_date, i.artist, d.order_qty 
FROM orders o
INNER JOIN order_details d ON d.order_id = o.order_id
INNER JOIN items i ON i.item_id = d.item_id
INNER JOIN customers c ON c.customer_id = o.customer_id