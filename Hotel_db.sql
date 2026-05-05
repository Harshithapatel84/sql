create database hotel_db;
use hotel_db;
create table Hotel(
hotel_id int PRIMARY KEY,
hotel_name varchar(20),
owner varchar(30),
description text,
opening_date date,
check_in_time time,
active boolean
);
desc Hotel;
insert into Hotel values
(1, 'royal ', 'ramesh', 'luxury stay in city center', '2010-05-20', '14:00:00', true),
(2, 'pearl', 'suresh', 'eco friendly hotel with garden view', '2015-08-15', '13:00:00', true),
(3, 'navarang', 'mahesh', 'hotel near beach with sea view', '2012-11-10', '12:00:00', true),
(4, 'ashoka', 'ganesh', 'peaceful stay near mountains', '2018-01-25', '15:00:00', false),
(5, 'city lodge', 'rajesh', 'budget hotel in busy area', '2020-09-05', '11:00:00', true);

select * from Hotel;
