SELECT * from market_basket_analysis.order_products limit 100;
SELECT * from departments;
SELECT * from aisles;
select * from orders limit 100;
select * from products;




-- order id, product id. nama produk, department,
-- aisles, add to cart, re ordered, order_dow, order_hour, days_since_prior_order

SELECT
    order_products.order_id, products.produdct_id as product_id, products.product_name,
    departments.department, aisles.aisle, order_products.add_to_cart,
    order_products.reordered, orders.order_dow, orders.order_hour,
    orders.days_since_prior_order
from order_products LEFT JOIN products
    on order_products.produdct_id = products.produdct_id
LEFT JOIN departments
    ON products.department_id = departments.department_id
LEFT JOIN aisles
    ON products.aisles_id = aisles.aisles_id
LEFT JOIN orders
    ON order_products.order_id = orders.order_id
WHERE order_products.order_id = 40
LIMIT 100;

SELECT count(*) from order_products;

-- tambah index biar enteng.
ALTER TABLE order_products ADD INDEX (order_id);
ALTER TABLE order_products ADD INDEX (produdct_id);
ALTER TABLE orders ADD INDEX (order_id);

-- pembuatan temprorary table biar enteng
CREATE TEMPORARY TABLE temp_ids AS
SELECT DISTINCT order_id 
FROM order_products 
LIMIT 50000;

-- Tambahkan index ke tabel sementara agar join-nya secepat kilat
ALTER TABLE temp_ids ADD INDEX (order_id);

-- kueri ekspor csv pake metode temp table
SELECT
    op.order_id, 
    p.produdct_id as product_id, 
    p.product_name,
    d.department, 
    a.aisle, 
    op.add_to_cart,
    op.reordered, 
    o.order_dow, 
    o.order_hour,
    o.days_since_prior_order
FROM temp_ids t
JOIN order_products op ON t.order_id = op.order_id -- Hanya ambil yang ada di temp_ids
LEFT JOIN products p ON op.produdct_id = p.produdct_id
LEFT JOIN departments d ON p.department_id = d.department_id
LEFT JOIN aisles a ON p.aisles_id = a.aisles_id
LEFT JOIN orders o ON op.order_id = o.order_id
INTO OUTFILE 'D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/hasil_join_database.csv'
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- tambah index biar enteng
ALTER TABLE order_products ADD INDEX (order_id);
ALTER TABLE order_products ADD INDEX (produdct_id);
ALTER TABLE orders ADD INDEX (order_id);

-- Tambahkan index ke tabel sementara agar join-nya secepat kilat
ALTER TABLE temp_ids ADD INDEX (order_id);


-- Kueri untuk ambil CSV (ga dipake, terlalu berat)
SELECT
    order_products.order_id, products.produdct_id as product_id, products.product_name,
    departments.department, aisles.aisle, order_products.add_to_cart,
    order_products.reordered, orders.order_dow, orders.order_hour,
    orders.days_since_prior_order
from order_products LEFT JOIN products
    on order_products.produdct_id = products.produdct_id
LEFT JOIN departments
    ON products.department_id = departments.department_id
LEFT JOIN aisles
    ON products.aisles_id = aisles.aisles_id
LEFT JOIN orders
    ON order_products.order_id = orders.order_id
WHERE order_products.order_id IN (
    SELECT order_id FROM (
        SELECT DISTINCT order_id FROM order_products LIMIT 50000
    ) AS temp_orders)
INTO OUTFILE 'D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/hasil_join_database.csv'
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';




