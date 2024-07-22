-- IS NULL IS NOT NULL WITH WHERE 
SELECT *FROM student;
select * from student where age is null;
select * from student where age is not null;
-- LIMIT ,OFFSET
SELECT *FROM USERS;
select *from users limit 3; #1st 3records
select *from users order by name desc limit 3; #descending then #1st 3 top records

select *from users where id >2 limit 3;
select *from users limit 1,3    ;#  1st rowsskip and next 3 records shown
select *from users order by name desc limit 1,4;  #1st rowskip shows 4 record 
-- AGGREGATE FUNCTIONS:COUNT , SUM ,AVG, MIN ,MAX:
SELECT COUNT(ID) FROM STUDENT;
select count(id) from users;# total users are 5
-- sum() :totalsum of numeric columns

select sum(id) from users; #calcultesum of totalof numeric columns 
select sum(id) from student;#2+
select avg(id) from users;#avg 
select min(id) from users;#minlowest 
select max(id)from users; # highest 5

-- UPDATE : MODIFY EXISTING RECORDS OF TABLE

UPDATE users 
set name= 'Arpita' where id=3; #safe moewe have assign as id as  as primary key 
select *from users;

UPDATE users 
set address ='Mumbai' where id=2; #change pune to mumbai 

-- DELETE: With where 
delete from users 
where id=5;
select *from users;
-- Id alsways unique deleted 5 th row so id 6 generated if new data get added
insert into users 
values(7,"Chaya",'chaya@gmail.com','23456','1234567890','thane','1990-03-12','M',1);
select *from users;
