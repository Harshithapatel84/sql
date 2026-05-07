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

insert into workforce values(1,'ravi','hr',45000.25,9876543210,'2020-05-12','09:00','2026-05-07 10:15:00',2020,'hr manager');
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

select*from workforce;