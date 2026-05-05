create database inventory_db;
use inventory_db;

create table marchandise(
name varchar(50),
product_id varchar(10) PRIMARY KEY,
total_item int,
location varchar(40),
price double,
expiry_date date,
manufacture_date date,
available boolean,
weight float
);
desc marchandise;

insert into marchandise values('moisturizer','NIV201',4,'bangalore',600,'2026-04-12','2014-10-03',true,600);
insert into marchandise values('Moong dal','dal89',2,'mysore',300,'2026-04-19','2024-06-01',true,1);

select * from marchandise;

