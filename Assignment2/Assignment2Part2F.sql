-- *************************************************************
-- fetch all the titles with an order quantity over one
-- join items primary key item_id on order_details primary/foreign key item_id
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT i.title FROM order_details d
INNER JOIN items i ON i.item_id = d.item_id
WHERE d. order_qty > 1