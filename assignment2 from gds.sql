create database gds_ass2;
use gds_ass2;
create table world_table
(
name varchar(50),
continent varchar(20),
area int,
population int,
gdp bigint,
constraint pk primary key (name)
);
insert into world_table VALUES
('Afghanistan','Asia',652230,25500100,20343000000),('Albania','Europe',28748,2831741,12960000000),('Algeria','Africa',2381741,37100000,188681000000),('Andorra','Europe',468,78115,3712000000),('Angola','Africa',1246700,20609294,100990000000);
select*from world_table;
select name,population,area from world_table where area>3000000 or population>25000000 ;
---question 52
create table customer
(
id int,
name varchar(20),
refer_id int,
constraint pk primary key(id)
);
insert into customer values(1,'will',null),(2,'jane',null),(3,'alex',2),(4,'bill',null),(5,'zack',1),(6,'mark',2);
select*from customer;
select name from customer where refer_id is null;
select name from customer where  refer_id is  not null;
create table customer_constraint
(
id int,
name varchar(20),
constraint pk primary key(id)
);
create table orders
(
id int,
customer_id int,
constraint pk primary key(id),
constraint fk foreign key (customer_id)references customer_constraint(id)
);
insert into customer_constraint VALUES (1,'Joe'),(2,'Henry'),(3,'Sam'),(4,'Max');
select*from customer_constraint;
insert into orders VALUES (1,3),(2,1);
select * from orders;
select name from customer_constraint where id=2 or id=4;
