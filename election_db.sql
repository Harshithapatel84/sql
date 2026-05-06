create database election_db;
use election_db;

create table election(
election_id int primary key,
name varchar(20),
state varchar(30),
totalvotes int,
total_candidates int,
election_year year,
election_date date,
result_time time
);

desc election_info;

rename table election to election_info;

alter table election_info add vote_percentage double;
alter table election_info add  status enum('ongoing','completed');
alter table election_info add nomination datetime;

alter table election_info rename column name to election_name;
alter table election_info rename  column totalvotes to total_votes;

alter table election_info modify  state char(15);
alter table election_info modify vote_percentage float;

alter table election_info drop total_candidates;
