-- Constraints: rules 
use consumers;
CREATE TABLE Student
(
  id int not null unique,
  name varchar(50) not null,
  email varchar(100) not null,
  age tinyint check(age>=18),
  status boolean default 1);
  -- Insert data 
  insert into student (id,name,email,age) values(1,"Jiya","jiya@gmail.com",21);
  select *from student;

  insert into student (id,name,email,age) values(2,"Kiran","kirana@gmail.com",26);
  --    -- AND,OR,NOT :
  SELECT *from student 
  where age =21 and age=26;
  
  select *from student 
  where age=21 or id=2;
  select *from users;
  select *from users
  where address="pune" or gender="o";
  select *from users
  where NOT gender="o";
  
  -- IN OPERATOR WITH WHERE 
  SELECT *FROM STUDENT 
  WHERE age =26  or age=27;
  select *from student 
  where age in (26,27);  #shorthand for multiple or
  
  -- LIKE OPERATOR: WITH WHERE used for pattern matching 
  SELECT * FROM STUDENT 
  WHERE name like "a%" ; #starts with a
  SELECT * FROM STUDENT 
  WHERE name like "j%" ; #starts with j
  SELECT * FROM STUDENT 
  WHERE name like "%a" ; #ends with a
  SELECT * FROM STUDENT 
  WHERE name like "k%n" ; #starts with k and endswith n
   SELECT * FROM STUDENT 
  WHERE age like "2%";
   select *from student ;
   SELECT * FROM STUDENT 
   where name like "%a%";
   
   -- Between , not between : range of data with where
   select *from users where password between 12345 and 12347;
   select *from student where age between 21 and 26;
   -- NOT BETWEEN 
   select *from users where password  not between 12345 and 12347;
   
   -- ORDER BY :ASC desc
   SELECT *FROM student order by name;
     SELECT *FROM student order by name desc;
     select *from users order by password desc;
     select *from users order by name;
     select distinct address from users;
     select distinct name from users order by name;
  