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

-- DELETE ALL DATA FROM DATABASE (BCS THE DATE COLUMN HASNT BEEN FOMRATED)
truncate table ritel_indonesia.raw_dataset;
alter table ritel_indonesia.raw_dataset modify column Date varchar(10);
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'raw_dataset';
update ritel_indonesia.raw_dataset set Date = str_to_date(Date, '%d/%m/%Y');
alter table ritel_indonesia.raw_dataset modify column Date date;

select * from raw_dataset where year(Date) = 2024 and month(Date) = 4;




