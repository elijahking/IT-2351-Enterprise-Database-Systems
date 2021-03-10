-- *************************************************************
-- fetch product count and max price for each category
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT c.category_name 
,COUNT(p.product_id) AS count
,MAX(p.list_price) AS highest_price
FROM categories c
INNER JOIN products p ON p.category_id = c.category_id
WHERE p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY Count DESC