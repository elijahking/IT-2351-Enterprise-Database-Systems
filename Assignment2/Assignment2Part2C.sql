-- *************************************************************
-- fetch the customer_id, order_date, item_id and order_qty for each order
-- join order details primary/foreign key order_id on orders primary key order_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT o.customer_id, o.order_date, d.item_id, d.order_qty 
FROM orders o
INNER JOIN order_details d ON d.order_id = o.order_id