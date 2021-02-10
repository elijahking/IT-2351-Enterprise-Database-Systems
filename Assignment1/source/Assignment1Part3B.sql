-- *************************************************************
-- fetch title, artist, and unit price from items
-- where unit price is greater than 16
-- ordered by unit price
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT title, artist, unit_price 
FROM items
WHERE unit_price > 16
ORDER BY unit_price
