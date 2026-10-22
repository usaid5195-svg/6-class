
SELECT product_name,
list_price, list_price / 1000.0 
AS price_in_thousands
FROM production.products;

SELECT DISTINCT state
FROM sales.customers;

SELECT TOP 5 product_name, 
list_price
FROM production.products
ORDER BY list_price ASC;

SELECT product_name, 
list_price, 
category_id
FROM production.products
WHERE list_price BETWEEN 200 AND 600
AND category_id IN (1, 6);



WHERE category_id IN 
(1, 6) AND 
list_price < 1000;


SELECT *
FROM sales.customers
WHERE email LIKE '%.com'
AND last_name LIKE 'M%';


SELECT product_name, 
list_price
FROM production.products
ORDER BY list_price 
DESC
OFFSET 10 ROWS FETCH NEXT 
10 ROWS ONLY;

SELECT *
FROM 
sales.order_items
WHERE 
discount IS NOT NULL;


SELECT *
FROM sales.order_items
WHERE discount 
IS NOT NULL AND 
discount <> 0;