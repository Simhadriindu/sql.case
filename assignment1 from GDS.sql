create database city;
use city;
create table CITY
(
ID int,
name VARCHAR(17),
countery VARCHAR(3),
district VARCHAR(20),
populstion int
);
show create table  CITY;
describe CITY;
insert into CITY VALUES(6,'Rotterdam','NLD','Zuid-Holland',593321);
insert into CITY VALUES(46283,'Scottsdale','USA','Arizona',202705);
insert into CITY VALUES(34326,'Corona','USA','California',124966);
insert into CITY VALUES(3973,'Concord','USA','California',121780);
SELECT*FROM CITY;
SELECT *from CITY where countery='USA' AND populstion>100000;
select name from city where countery='usa' and populstion>120000;
select*from city where id=6;
select *from city where countery='jpn';
select *from city where countery='nld';
select name from city where countery=jpn;
commit;
create table station
(
id int,
city varchar(21),
state varchar(2),
lat_n int,
long_w int
);
insert into station values(324,'kissee','mo',139,73);
INSERT INTO STATION VALUES(824,'Loma Mar','CA',48,130);
INSERT INTO STATION VALUES(603,'Sandy Hook','CT',72,148);
INSERT INTO STATION VALUES(478,'Tipton','IN',33,97);
INSERT INTO STATION VALUES(619,'Arlington','CO',75,92);
INSERT INTO STATION VALUES(711,'Turner','AR',50,101);
INSERT INTO STATION VALUES(711,'Turne','AR',50,101);
select city,state from station;
select city from station where id%2=0 order by city desc;
select count(city)as total,
count(distinct(city)) as uniquecity,
(count(city)-count(distinct(city))) as difference from station;
SELECT CITY,LENGTH(CITY)AS MIN_LENGTH_OF_CITY, 
LENGTH(CITY) AS MAX_LENGTH_OF_CITY FROM STATION ORDER BY
LENGTH(CITY) DESC LIMIT 1;
select distinct(city) from station where lcase(city) like '%a'or'%e'or'%i'or'%o'or'%u' order by city;
select distinct(city) from station where lcase(city) not like '%a'
and lcase(city) not like '%e'
and lcase(city) not like '%i'
and lcase(city) not like '%o'
and lcase(city) not like '%u' order by city;
select distinct(city) from station where lcase(city) not like 'a%'
or lcase(city) not like 'e%'
or lcase(city) not like 'i%'
or lcase(city) not like 'o%'
or lcase(city) not like 'u%' order by city;
select distinct(city) from station where lcase(city) not like 'a%a'
and lcase(city) not like 'e%e'
and lcase(city) not like 'i%i'
and lcase(city) not like 'o%o'
and lcase(city) not like 'u%u' order by city;
select distinct CITY from STATION where CITY not regexp '^[aeiou]' or
city not regexp '[aeiou]$';
select distinct CITY from STATION where CITY not regexp '^[aeiou]' AND
city not regexp '[aeiou]$';
INSERT INTO STATION VALUES(711,'Turne','AR',50,101);
select*from city;
create table product
(
product_id int not null,
product_name varchar(20),
unit_price int,
constraint pk primary key (product_id)
);
create table sales
(
seller_id int,
product_id int,
buyer_id int,
seller_date date,
quantity int,
price int,
constraint fk foreign key(product_id) references product(product_id)
);
insert into product values(1,'S8',1000);
insert into Product values(2,'G4',800);
insert into Product values(3,'iPhone',1400);
insert into Sales values(1,1,1,'2019-01-21',2,2000);
insert into Sales values(1,2,2,'2019-02-17',1,800);
insert into Sales values(2,2,3,'2019-06-02',1,800);
insert into Sales values(3,3,4,'2019-05-13',2,2800);
select *from product;
select *from sales; 
select *from product where product_id not in(select product_id from sales where seller_date not between '2019-01-01' AND '2019-03-31');
create table views
(
article_id int,
author_id int,
viewer_id int,
vie_date date
);
insert into views values(1,3,5,'2019-08-1');
insert into views values(1,3,6,'2019-08-02');
insert into views values(2,7,7,'2019-08-01');
insert into views values(2,7,6,'2019-08-02');
insert into views values(4,7,1,'2019-07-22');
insert into views values(3,4,4,'2019-07-21');
insert into views values(3,4,4,'2019-07-21');
select*from views;
select distinct author_id as id from views where author_id=viewer_id order by author_id asc;
create table delivery
(
delivery_id int not null,
customer_id int,
order_date date,
customer_pre_delivery_date date,
constraint pk primary key (delivery_id)
);
insert into Delivery values
(1,1,'2019-08-01','2019-08-02'),(2,5,'2019-08-02','2019-08-02'),(3,1,'2019-08-11','2019-08-11'),(4,3,'2019-08-24','2019-08-26'),(5,4,'2019-08-21','2019-08-22'),(6,2,'2019-08-11','2019-08-13');
select*from delivery;
