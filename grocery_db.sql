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