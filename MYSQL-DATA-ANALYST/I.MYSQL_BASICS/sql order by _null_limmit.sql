-- ORDER BY : ASCENDING and DECENDING ODER 
 select *from car_data where car_name='swift' ORDER BY year asc;# swift card records show asc order by year 
 select *from car_data ORDER BY year asc;# you canwrite like this without where 
 -- or 
  select *from car_data where car_name='swift' ORDER BY year ;
 select *from car_data where car_name='swift' order by year desc; # decending high to low
 select *from car_data where car_name='swift' order by selling_price;
 
 -- IS NULL OR NOT NULL : Whether null value is present or not: 
 select *from car_data where car_name is null; #no null vlaues
 select *from car_data where selling_price is null; # no null vlaues 

 select *from car_data where car_name is  not null;
 
 -- LIMIT :return specified no. of records withor without wherecluase we can use 
 SELECT * FROM car_data limit 3; # return 1st 3 records/rows
 SELECT * FROM car_data  LIMIT 3,6;  # return skip 1st 3 rows and retun 6 rows from (4,5,6,7,8,9)
 SELECT * FROM car_data  LIMIT 3,2;
 SELECT * FROM car_data where car_name='swift' LIMIT 3;
 SELECT * FROM car_data where car_name='swift' order by YEAR desc LIMIT 3;
 
 SELECT * FROM car_data ORDER BY selling_price DESC LIMIT 3;  #most 3 expencive cars
-- IN : return records by multiple ocnditions ,it works like OR operator
SELECT * FROM car_data where car_name in ('swift','ritz');
-- OR checks if at least one condition is true, while IN checks if a value matches any value in a specified list
-- BETWEEN : used to return rows with ceratian range ,used for values,dates,text
 SELECT * FROM car_data where year between 2015 and 2016;
 SELECT * FROM car_data where Selling_Price between 6 and 8;
  SELECT * FROM car_data where car_name between 'A' AND 'b';# A TO B RANGE 
  SELECT * FROM car_data where car_name between 'A' AND 'c'