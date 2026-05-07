create database country_db;
use country_db;

create table country(
country_id int unique,
country_name varchar(20) not null,
population long,
capittal_city char(10),
area decimal(12.2),
gdp double,
literacy_rate float,
independence_date date,
developed boolean,
country_code binary
);

alter table country modify population bigint;
alter table country modify area decimal(12,2);
alter table country modify country_code char(8);

insert into country values(056,null,150000000,'delhi',567.45,67.8,50,'1947-8-15',false,'in');
insert into country values(1,'USA',340000000,'Washington',9833520.45,27.5,99,'1776-07-04',true,'US');
insert into country values(44,'UK',68000000,'London',243610.25,3.1,99,'1707-05-01',true,'UK');
insert into country values(81,null,125000000,'Tokyo',377975.63,4.9,99,'1947-05-03',true,'JP');

insert into country values(61,null,27000000,'Canberra',7692024.88,1.7,99,'1901-01-01',true,'AU'),
(86,'China',1412000000,'Beijing',9596961.12,17.8,97,'1949-10-01',false,'CH'),
(91,'Brazil',215000000,'Brasilia',8515767.04,2.0,94,'1822-09-07',false,'BR');

insert into country(country_name,capittal_city,independence_date,developed)values('France','Paris','1789-07-14',true),
('Germany','Berlin','1871-01-18',true),
('Russia','Moscow','1991-12-26',false),
('Italy','Rome','1861-03-17',true);

update country set area=56743.67 where country_id=56;
update country set country_id=94 where country_name='India';
update country set developed=true where country_id=91;
update country set independence_date='1923-06-18' where country_id=81;
update country set literacy_rate=78 where country_id=94;

delete from country where country_id=91;
delete from country where capittal_city='Beijing';
delete from country where population=9596961.12;
delete from country where independence_date='1991-12-26';
delete from country where country_name='UK';

select * from country;

drop table country;

 
