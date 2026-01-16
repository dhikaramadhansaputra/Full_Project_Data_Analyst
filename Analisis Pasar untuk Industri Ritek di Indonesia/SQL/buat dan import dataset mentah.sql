-- BUAT DATABASE START
CREATE DATABASE ritel_indonesia;
USE ritel_indonesia;

create table raw_dataset
(
	transaction_id text,
    Date date,
    Product_Name text,
    Category text,
    Units_Sold int,
    Unit_Price decimal,
    Revenue decimal,
    Store_Location text,
    Payment_Method text,
    Province text,
    Unit_Cost decimal
);


-- IMPORT RAW DATASET
show global variables like "local_infile";

load data local infile "D:/Dhika Ramadhan Saputra/Data Analist/Full Project/Analisis Pasar untuk Industri Ritek di Indonesia/data/DatasetPenjualanToko.csv"
into table ritel_indonesia.raw_dataset
fields terminated by ";"
ignore 1 lines;

select * from raw_dataset;

