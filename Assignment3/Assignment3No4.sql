-- *************************************************************
-- fetch totals purchased for each product in each category
-- created for IT2351 by Elijah King, Spring 2021
-- *************************************************************
SELECT IF(GROUPING(c.category_name), 'All categories', c.category_name) AS category_name
,IF(GROUPING(p.product_name), 'All products', p.product_name) AS product_name
,SUM(oi.quantity) AS total_quantity_purchased
FROM categories c
INNER JOIN products p ON p.category_id = c.category_id
INNER JOIN order_items oi ON oi.product_id = p.product_id
WHERE p.category_id = c.category_id
AND oi.product_id = p.product_id
GROUP BY c.category_name, p.product_name WITH ROLLUP
