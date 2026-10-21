SELECT
    p.product_name,
    b.brand_name
FROM production.products
AS p
INNER JOIN production.brands
AS b
    ON p.brand_id = b.brand_id;

SELECT
    s.store_id,
    s.store_name
FROM sales.stores 
AS s
LEFT JOIN sales.staffs AS st
    ON s.store_id = st.store_id
WHERE st.staff_id IS NULL;




SELECT
    p.product_name,
    s.quantity
FROM production.products
AS p
INNER JOIN production.stocks
AS s
    ON p.product_id = s.product_id
WHERE s.quantity < 5
  AND s.store_id = 1;


SELECT
    o.order_id,
    p.product_name,
    oi.quantity
FROM sales.orders
AS o
INNER JOIN sales.order_items
AS oi
    ON o.order_id = oi.order_id
INNER JOIN production.products
AS p
    ON oi.product_id = p.product_id
WHERE o.order_id = 1;


SELECT
COUNT(DISTINCT o.order_id) 
AS total_orders
FROM sales.orders
AS o
INNER JOIN sales.order_items AS oi
    ON o.order_id = oi.order_id;

SELECT
COUNT(*) AS total_orders
FROM sales.orders;


SELECT
    p.product_name,
    s.store_name
FROM production.products 
AS p
CROSS JOIN sales.stores 
AS s;