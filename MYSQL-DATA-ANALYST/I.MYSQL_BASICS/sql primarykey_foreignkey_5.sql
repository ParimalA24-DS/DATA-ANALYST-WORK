-- PRIMARY KEY  and SECONDARY KEY
-- PRIAMRY KEY :
-- CREATE ONE PARENT & CHILD TABLE 
CREATE TABLE Cities
(
  cid int not null,
  name varchar(100) not null,
  primary key(cid)
);
SELECT *FROM CITIES;
-- INSERT DATA :
INSERT INTO cities (cid, name) 
VALUES 
(1, 'Agra'),
(2, 'Delhi'),
(3, 'Pune'),
(4, 'Mumbai'),
(5, 'Bangalore');

-- create child table with aprimary key and foreign key :
create table students   # child table with primary and foreign key
( id int not null unique auto_increment,
 name varchar(50) not null ,
 email varchar(100) not null unique,
 city_id int  null,
 primary key (id),
 foreign key (city_id) references cities(cid));  #explicitly enforcefulladdding foreign key 
  select *from students;
  
  -- insert data into achild table: students
  insert into students (name,email,city_id)
  values('Bhavana','bhavana@gmail.com',1);
  insert into students (name,email,city_id)
  values('Kavish','kavish@gmail.com',2),
  ('Ram','ram@gmail.com',3),
  ('Dhara','dhara@gmail.com',4);
   select *from students;
  
 
 

