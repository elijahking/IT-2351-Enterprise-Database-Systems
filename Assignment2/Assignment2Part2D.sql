-- *************************************************************
-- fetch the customer_id, order_date, artist and order_qty for each order
-- join order details primary/foreign key order_id on orders primary key order_id
-- join item primary key item_id on order details primary/foreign key item_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT o.customer_id, o.order_date, i.artist, d.order_qty 
FROM orders o
INNER JOIN order_details d ON d.order_id = o.order_id
INNER JOIN items i ON i.item_id = d.item_id