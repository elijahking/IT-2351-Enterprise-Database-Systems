-- *************************************************************
-- fetch title, artist, and unit price from items
-- where unit price is greater than 16
-- ordered by unit price
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT
	customer_first_name as 'First Name',
	customer_last_name as 'Last Name',
	customer_city as City,
	customer_state as State
FROM customers
ORDER BY customer_last_name, customer_first_name