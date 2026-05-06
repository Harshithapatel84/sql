create database travel_db;
use travel_db;

create table travel(
travel_id int primary key,
name varchar(30),
age int,
email varchar(25),
mobilenumber int,
source_point varchar(50),
destination_point varchar(60),
booking_date date,
departure_time time,
distance double,
ratings enum('good','average','poor','excellent')
);

desc traveler_info;

rename table travel to traveler_info;

alter table traveler_info add budget double;
alter table traveler_info add facility text;
alter table traveler_info add ticket_price decimal(4,2);

alter table traveler_info modify age tinyint; 
alter table traveler_info modify mobilenumber  bigint; 

alter table traveler_info rename column name to full_name;
alter table traveler_info rename column mobilenumber to phone_number;
alter table traveler_info rename column budget to allowance;

alter table traveler_info drop email;

insert into traveler_info values(25,'ciya rajesh',23,8456276567,'bangalore','chikkamagaluru','2026-02-15','11:0',250,'good',5600,'swimming pool,wifi with luxury rooms..',89.99);

select * from  traveler_info;


