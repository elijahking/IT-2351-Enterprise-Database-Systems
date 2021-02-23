-- *************************************************************
-- fetch the title, artist, unit_price and order_qty for each order
-- join items primary key item_id on order_details foreign key item_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT i.title, i.artist, i.unit_price, od.order_qty 
FROM order_details od
INNER JOIN items i ON i.item_id = od.item_id
ORDER BY i.title, i.artist