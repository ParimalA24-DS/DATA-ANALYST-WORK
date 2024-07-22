-- Import ,export 
create database my_data;
SHOW DATABASES;
use my_data;
select count(*) from car_data; #totl 301 records 
select car_name from car_data; #vextract single column from car_data table 
select *from car_data;
-- only select particular column 
select present_price,car_name,Year from car_data;
-- uniquevalues :select distinct:
select distinct(car_name) from car_data;
select count(distinct(car_name))from car_data; #98
select count(distinct(Fuel_Type))from car_data; #3
select count(distinct(Transmission))from car_data; #2
select distinct transmission from car_data; #manualandautomatic 

-- where: filter recordson certain condtion 
select * from car_data 
where car_name='ritz';
select * from car_data 
where Fuel_Type='petrol';
select count(car_name)from car_data 
where Fuel_Type='petrol';#239 
select car_name from car_data
where Fuel_Type='diesel';
select count(car_name) from car_data
where Fuel_Type='diesel';  #60 
select distinct fuel_type from car_data; # petrol ,diesel ,cng type 

select *from car_data where year>2016;
-- and
select *from car_data where fuel_type='petrol' and transmission='manual';

select *from car_data where fuel_type='petrol' and Car_Name='ritz';
select *from car_data where year>2014 and Car_Name='swift';
-- or:
select *from car_data where year>2014 or Car_Name='swift'; # returns all if eiher a condition satisfied 
select *from car_data where car_name='ciaz' or Car_Name='swift';
select *from car_data where car_name='ciaz' and transmission='manual'and fuel_type='diesel';
select *from car_data where car_name='ciaz' or transmission='manual'or fuel_type='diesel';

select *from car_data where fuel_type='petrol' and(car_name='ciaz' or car_name='swift');

-- not 
select *from car_data where not car_name='swift'; #its showsallbrandsexcept swift
select *from car_data where not car_name='ritz'; #its showsallbrandsexcept ritz

