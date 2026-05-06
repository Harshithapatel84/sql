create database product_db;
use product_db;

create table product(
product_id int,
    product_name varchar(40),
    category char(15),
    price decimal(8,2),
    manufacture_date date
    );
    
    desc product;

alter table product add stock bigint,add rating float,add available boolean;

alter table product modify product_name varchar(60),modify price double,modify stock smallint;

alter table product rename column category to product_category;
alter table product rename column manufacture_date to mfg_date;

alter table product drop column available;

drop table product;


