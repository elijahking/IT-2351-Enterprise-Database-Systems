-- *************************************************************
-- fetch categories that have products
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT DISTINCT category_name FROM categories 
WHERE category_id 
IN(SELECT category_id FROM products)
ORDER BY category_name