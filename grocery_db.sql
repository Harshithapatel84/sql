create database grocery_db;
use grocery_db;

create table grocery(
item_id int ,
item_name varchar(40) not null,
brand char(20) unique,
quantity bigint,
price decimal(8,2),
expiry_time time,
added_datetime datetime,
manufacture_year year,
item_description text,
stock_status enum('available','out of stock')
);

insert into grocery values(1,'wheat flour','aashirvaad',50,1200.50,'10:30','2026-05-07 09:15:00',2025,'healthy jeera rice','available');
insert into grocery values(2,'oil','fortune',30,950.75,'8:30','2026-05-06 11:20:00',2024,'sunflower cooking oil','available');
insert into grocery values(3,'biscuits','oreo',100,30.00,'6:45','2026-05-05 04:10:00',2026,'chocolate cream biscuits','out of stock');
insert into grocery values(4,'soap','dove',40,55.50,'09:15','2026-05-04 08:30:00',2025,'bathing soap','available');

insert into grocery values(5,'shampoo','clinic plus',25,145.75,'11:00','2026-05-03 10:45:00',2024,'hair care shampoo','available'),
(6,'tea powder','taj mahal',60,320.00,'07:30','2026-05-02 07:20:00',2025,'premium tea powder','out of stock'),
(7,'sugar','madhur',80,48.25,'06:50','2026-05-01 06:10:00',2026,'refined white sugar','available'),
(8,'milk','nandini',35,32.00,'05:45','2026-04-30 05:00:00',2026,'fresh toned milk','available');

insert into grocery(item_id,item_name,quantity,item_description) values(9,'moisturizer',2,'keeps th skin moisture');
insert into grocery(item_id,item_name,quantity,item_description) values(10,'dal',5,'rich in protein');
insert into grocery(item_id,item_name,quantity,item_description) values(11,'soya',1,'protein rich in veg item');
insert into grocery(item_id,item_name,quantity,item_description) values(12,'masala powder',7,'home made masala powders');


update grocery set brand='madhur' where item_id=7;
update grocery set price=60 where item_id=4;
update grocery set quantity=50 where item_id=5;
update grocery set stock_status='available' where item_id=6;
update grocery set item_name='brown sugar' where item_id=7;

delete from grocery where item_id=4;
delete from grocery where brand='nandini';
delete from grocery where item_id=6;
delete from grocery where item_name='soap';
delete from grocery where item_id=9;

drop table grocery;


desc grocery;

create table shop(
shop_id int primary key,
shop_name varchar(50) not null,
shop_type char(20),
monthly_income decimal(10,2) not null,
gst_number bigint unique,
opening_date date,
opening_time time,
last_stock_update timestamp,
license_year year,
shop_details text
);

desc shop;

insert into shop values(1,'Fresh Mart','Grocery',85000.50,9876543210,'2020-05-12','08:00:00','2026-05-07 10:15:00',2020,'daily needs grocery shop');
insert into shop values(2,'Style Zone','Fashion',65000.75,9123456780,'2019-03-20','09:30:00','2026-05-07 11:00:00',2019,'clothing and accessories');
insert into shop values(3,'Tech World','Electronics',120000.25,9988776655,'2021-07-18','10:00:00','2026-05-07 09:20:00',2021,'mobile and laptop store');
insert into shop values(4,'Book Heaven','Books',45000.90,9871203456,'2018-09-25','07:45:00','2026-05-07 12:10:00',2018,'educational books store');

insert into shop values
(5,'Cake Palace','Bakery',70000.45,9012345678,'2022-01-14','08:15:00','2026-05-07 08:55:00',2022,'cakes and snacks'),
(6,'Fit Hub','Sports',55000.60,9345678120,'2023-02-11','09:00:00','2026-05-07 01:30:00',2023,'sports equipment shop'),
(7,'Beauty Care','Cosmetics',60000.95,9765432108,'2020-11-09','10:30:00','2026-05-07 02:20:00',2020,'beauty and skincare products'),
(8,'Pet Corner','PetShop',40000.35,9654321870,'2017-06-05','09:45:00','2026-05-07 03:10:00',2017,'pet foods and accessories');

insert into shop(shop_id,shop_name,monthly_income,gst_number) values
(11,'Coffee Point',35000.25,9876543201),
(12,'Toy Land',42000.75,9123456701),
(13,'Mobile City',95000.45,9988776611),
(14,'Gift Gallery',39000.80,9345678901);

update shop set shop_type='SuperMarket' where shop_id=1;
update shop set monthly_income=130000.45 where shop_name='Tech World';
update shop set gst_number=9998887776 where shop_id=3;
update shop set opening_time='11:00:00' where shop_type='Books';
update shop set shop_details='largest electronics showroom' where shop_id=3;

delete from shop where shop_id=14;
delete from shop where shop_name='Mobile City';
delete from shop where shop_type='Sports';
delete from shop where monthly_income=39000.80;
delete from shop where license_year=2024;

select * from shop;

rollback;

drop table shop;

create table facebook(
userid int primary key,
name varchar(20),
age int,
gender enum('male','femal'),
bio text,
active boolean,
request int
);
insert into facebook values(23,'harshitha',21,'female','handle with care',true,78),
(24,'kusuma',21,'female','nature beauty',false,45),
(25,'ravi',24,'male','travelling lover',true,120),
(26,'sneha',22,'female','music addict',true,95),
(27,'arjun',26,'male','fitness trainer',false,60),
(28,'pooja',20,'female','photography lover',true,150),
(29,'kiran',23,'male','food blogger',true,88);

alter table facebook modify gender enum('male','female');
alter table facebook rename column userid to user_id,rename column name to user_name;

select request as follow_request from facebook;

select * from facebook where age=21 and gender='female';
select * from facebook where bio='nature beauty' or active=true;
select *   from  facebook where gender !='female' ;
select * from facebook where age=26;
select distinct age from facebook;

select * from facebook where age>21 and active=true;
select * from facebook where gender='male' or request>100;
select * from facebook where not active = true;
select distinct active from facebook;

select distinct age from facebook where request>50 and gender='female';
select * from facebook where gender='female' or request<80;

select * from facebook where request in (95,60);
select * from facebook where age between 21 and 34;
select * from facebook order by request;
select count(*) from facebook;
select sum(age) from facebook;

select gender,count(*) from facebook group by gender;

select request,count(*) from facebook group by request having request>30;

select * from facebook;

create table item(
name varchar(20),
price double,
quantity int,
expiery_date date);

insert into item values('milk',50,5,'2026-05-12'),
('biscuit',100,10,'2025-07-15'),
('egg',7,20,'2026-08-12');

create table product(
name varchar(25),
price double,
mfg_date date,
quantity int,
brand varchar(10),
description text);

insert into product values('mango',45,'2026-05-16',3,'raspuri','sweet mango'),
('milk',50,'2026-05-12',5,'nandini','healthy fat contain'),
('egg',20,'2026-08-12',7,'farm','protein rich'),
('lotion',500,'2025-04-18',5,'nivea','moisturize skin');


select * from item cross join product;

select * from item inner join product where item.name=product.name;