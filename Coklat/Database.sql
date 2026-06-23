Create database penjualan_coklat;
USE penjualan_coklat;

-- tabel calendar
create table calendar
(
	tanggal date,
    tahun int,
    bulan int,
    hari int,
    minggu int,
    day_of_week int
);

-- ubah tanggal jadi primary 
alter table calendar add primary key (tanggal);

-- tabel customers
create table customers
(
	customer_id varchar(10) primary key,
    age int,
    gender varchar(10),
    loyalty_member bool,
    join_date date
);

-- tabel products
create table products
(
	product_id varchar(10) primary key,
    product_name varchar(25),
    brand varchar(15),
    category varchar(15),
    cocoa_percent decimal(5,2),
    weight_gram int
);

-- tabel stores 
create table stores
(
	store_id varchar(10) primary key,
    store_name varchar(25),
    city varchar (15),
    country varchar(15),
    store_type varchar(10)
);

-- tabel sales
create table sales
(
	order_id varchar(15) primary key,
    order_date date,
    product_id varchar(10),
    store_id varchar(10),
    customer_id varchar(10),
    quantity int,
    unit_price decimal(5,2),
    discount decimal(5,2),
    revenue decimal(5,2),
    cost decimal(5,2),
    profit decimal(5,2),
    
    -- foreign key
    foreign key (product_id) references products(product_id) on delete cascade on update cascade,
    foreign key (store_id) references stores(store_id) on delete cascade on update cascade,
    foreign key (customer_id) references customers(customer_id) on delete cascade on update cascade,
    foreign key (order_date) references calendar(tanggal) on delete cascade on update cascade
);

describe calendar;


-- insert data calendar
SET FOREIGN_KEY_CHECKS = 0;
LOAD DATA LOCAL INFILE 'D:\Dhika Ramadhan Saputra/Data Analist/Full Project/Coklat/data/calendar.csv'
INTO TABLE calendar
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(tanggal, tahun, bulan, hari, minggu, day_of_week);

select * from calendar limit 5;

