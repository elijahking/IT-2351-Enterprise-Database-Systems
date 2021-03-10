-- *************************************************************
-- fetch order count and total ship amount from orders
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT COUNT(*) as count, SUM(ship_amount) as 'ship sum' FROM orders;

