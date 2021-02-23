-- *************************************************************
-- Update the unit_price by 10% for all items with a unit_price > 17
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SET SQL_SAFE_UPDATES=0;

UPDATE items
SET unit_price = unit_price * 1.1
WHERE unit_price > 17;

SET SQL_SAFE_UPDATES=1;