-- *************************************************************
-- fetch customers first name, last name, city, and state
-- ordered by state, then by city
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT customer_first_name, customer_last_name, customer_city, customer_state
FROM customers
ORDER BY customer_state, customer_city