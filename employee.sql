create database model;
use model;

create table employee(
name varchar(40),
age int,
empId char(20),
salary double
);

desc employee;

insert into employee values('Rahul',21,'BM12',20000);
insert into employee values('ciya',45,'RA78',50000);

select * from employee;


