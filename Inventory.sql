create database inventory_db;
use inventory_db;
drop table marchandise;

create table marchandise(
product_id int PRIMARY KEY,
name varchar(20),
location varchar(30),
price double,
mfg_date date,
exp_date date,
weight float,
quantity int,
available boolean
);

desc marchandise;

insert into marchandise values(1, 'soap', 'bangalore', 45.5, '2024-01-10', '2026-01-10', 0.2, 100, true);
insert into marchandise values(2, 'shampoo', 'mysore', 120.75, '2023-12-05', '2025-12-05', 0.5, 50, true);
insert into marchandise values(3, 'biscuit', 'mangalore', 30.0, '2025-02-01', '2025-08-01', 0.1, 200, true);
insert into marchandise values(4, 'oil', 'hubli', 250.99, '2024-06-15', '2026-06-15', 1.0, 80, false);
insert into marchandise values(5, 'facewash', 'udupi', 180.5, '2024-03-20', '2026-03-20', 0.3, 60, true);

select * from marchandise;




