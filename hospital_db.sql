create database hospital_db;
use hospital_db;

create table hospital(
name varchar(20),
location  varchar(40),
doctors int,
established_year year,
visiting time
);

desc hospital;

alter table hospital add emergency_availabe boolean;
alter table hospital add description text;
alter table hospital add  type enum('govt','private','multispeciality');
alter table hospital add blood_group varchar(5);

alter table hospital rename column doctors to total_doctors;
alter table hospital rename column visiting to visiting_time; ;
alter table hospital rename column   name to hospital_name;

alter table hospital modify column total_doctors smallint;
alter table hospital modify blood_group char(3);

alter table hospital drop blood_group;