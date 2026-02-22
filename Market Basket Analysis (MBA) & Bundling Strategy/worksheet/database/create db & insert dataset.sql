-- Create table before local infile
CREATE TABLE IF NOT EXISTS aisles
(
    aisles_id INT NOT NULL,
    aisle VARCHAR(225)
);

CREATE TABLE IF NOT EXISTS departments
(
    department_id INT NOT NULL,
    department VARCHAR(225)
);

CREATE TABLE IF NOT EXISTS aisles
(
    aisles_id INT NOT NULL,
    aisle VARCHAR(225)
);

CREATE TABLE IF NOT EXISTS order_products
(
    order_id INT NOT NULL,
    produdct_id INT NOT NULL,
    add_to_cart INT,
    reordered INT
);

CREATE TABLE IF NOT EXISTS aisles
(
    aisles_id INT NOT NULL,
    aisle VARCHAR(225)
);

CREATE TABLE IF NOT EXISTS orders
(
    order_id INT NOT NULL,
    user_id INT NOT NULL,
    eval_set INT,
    order_number INT,
    order_dow INT,
    order_hour INT,
    days_since_prior_order INT
);

CREATE TABLE IF NOT EXISTS products
(
    produdct_id INT NOT NULL,
    product_name VARCHAR(225),
    aisles_id INT NOT NULL,
    department_id INT NOT NULL
);

-- insert dataset using local infile
SET GLOBAL local_infile = 1;

-- aisles
load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/aisles.csv"
into table market_basket_analysis.aisles
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- departments
load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/departments.csv"
into table market_basket_analysis.departments
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- order
load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/orders.csv"
into table market_basket_analysis.orders
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- order_products
load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/order_products__prior.csv"
into table market_basket_analysis.order_products
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- products
load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Market Basket Analysis (MBA) & Bundling Strategy/data/raw/products.csv"
into table market_basket_analysis.products
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;


SELECT * from aisles;
select * from order_products LIMIT 100;
select * from orders;
select * from departments;
SELECT * from products;




