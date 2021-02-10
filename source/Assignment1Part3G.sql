-- *************************************************************
-- Assignment1Part3G
-- practice Concat function
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************

SELECT CONCAT(customer_first_name, ' ', customer_last_name)
AS Name
FROM customers
ORDER BY customer_last_name, customer_first_name