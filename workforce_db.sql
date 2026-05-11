create database workforce_db;
use workforce_db;

create table workforce(
employee_id int unique not null,
employee_name varchar(40) not null,
department char(20),
salary decimal (10,2),
phone_number bigint unique ,
joining_date date,
login_time time,
last_update datetime,
experience_year year,
employee_details text
);

desc workforce;

insert into workforce values(01,'ravi','hr',45000.25,9876543210,'2020-05-12','09:00','2026-05-07 10:15:00',2020,'hr manager');
insert into workforce values(2,'meena','sales',38000.75,9123456780,'2019-03-20','09:30','2026-05-07 11:00:00',2019,'sales executive');
insert into workforce values(3,'arun','admin',52000.50,9988776655,'2021-07-18','08:45','2026-05-07 09:20:00',2021,'admin officer');
insert into workforce values(4,'kiran','finance',61000.80,9871203456,'2018-09-25','10:00','2026-05-07 12:10:00',2018,'finance analyst');

insert into workforce values(5,'divya','testing',47000.45,9012345678,'2022-01-14','09:15','2026-05-07 08:55:00',2022,'software tester'),
(6,'nithin','support',35000.60,9345678120,'2023-02-11','11:00','2026-05-07 01:30:00',2023,'technical support'),
(7,'pooja','marketing',54000.95,9765432108,'2020-11-09','10:30','2026-05-07 02:20:00',2020,'marketing lead'),
(8,'sneha','developer',72000.35,9654321870,'2017-06-05','08:30','2026-05-07 03:10:00',2017,'java developer');

insert into workforce(employee_id,employee_name,salary,phone_number)values(11,'manoj',45000.25,9876543201),
(12,'deepa',52000.75,9123456701),
(13,'kavya',61000.45,9988776611),
(14,'rohan',39000.80,9345678901);

update workforce set department='manager' where employee_id=1;
update workforce set salary=65000.45 where employee_name='meena';
update workforce set phone_number=9998887776 where employee_id=3;
update workforce set login_time='10:45' where department='finance';
update workforce set employee_details='senior java developer' where employee_id=8;

delete from workforce where employee_id=14;
delete from workforce where employee_name='kavya';
delete from workforce where department='support';
delete from workforce where salary=39000.80;
delete from workforce where experience_year=2024;

select employee_id,employee_name from workforce;
select employee_id,employee_name,salary from workforce;

select phone_number as mobile_number,experience_year as experience from  workforce;

select * from  workforce where salary >= 35000 and experience_year  <2023;

select * from workforce where salary >=65000 or department = 'support';
 
 select * from workforce where employee_name != 'arun' ;

select*from workforce;

drop  table workforce;




create table software_store(
software_id int primary key,
software_name varchar(50) not null,
software_type char(20),
price decimal(10,2) not null,
license_key bigint unique,
release_date date,
install_time time,
last_updated timestamp,
version_year year,
software_description text
);

desc software_store;

insert into software_store values(15,'Photoshop','Editing',2500.50,9876543210,'2020-05-12','09:00:00','2026-05-07 10:15:00',2020,'image editing software');
insert into software_store values(2,'VS Code','Development',0.00,9123456780,'2019-03-20','10:30:00','2026-05-07 11:00:00',2019,'source code editor');
insert into software_store values(3,'MySQL','Database',1500.75,9988776655,'2021-07-18','08:45:00','2026-05-07 09:20:00',2021,'database management system');
insert into software_store values(4,'AutoCAD','Design',5500.90,9871203456,'2018-09-25','10:00:00','2026-05-07 12:10:00',2018,'engineering design software');

insert into software_store values
(5,'IntelliJ','IDE',3200.45,9012345678,'2022-01-14','09:15:00','2026-05-07 08:55:00',2022,'java development ide'),
(6,'Eclipse','IDE',0.00,9345678120,'2023-02-11','11:00:00','2026-05-07 01:30:00',2023,'open source ide'),
(7,'Figma','UIUX',1200.95,9765432108,'2020-11-09','10:30:00','2026-05-07 02:20:00',2020,'ui ux designing tool'),
(8,'Postman','Testing',800.35,9654321870,'2017-06-05','08:30:00','2026-05-07 03:10:00',2017,'api testing software');

insert into software_store(software_id,software_name,price,license_key) values
(11,'Canva',500.25,9876543201),
(12,'PyCharm',4200.75,9123456701),
(13,'Android Studio',0.00,9988776611),
(14,'Notepad++',0.00,9345678901);


update software_store set software_type='Management' where software_id=1;
update software_store set price=6500.45 where software_name='AutoCAD';
update software_store set license_key=9998887776 where software_id=3;
update software_store set install_time='10:45:00' where software_type='Design';
update software_store set software_description='advanced java ide' where software_id=5;

delete from software_store where software_id=14;
delete from software_store where software_name='Android Studio';
delete from software_store where software_type='IDE';
delete from software_store where price=0.00;
delete from software_store where version_year=2024;

select price as cost,software_description as description from software_store;

select * from software_store where price > 1000 and software_type='IDE';
select * from software_store where software_name='MySQL' and price < 2000;

select * from software_store where software_type='IDE' or software_type='Database';
select * from software_store where software_id < 3 or software_type='Design';

select * from software_store where not software_type='IDE';
select * from software_store where not version_year=2020;
select * from software_store;

drop table software_store;

commit;


