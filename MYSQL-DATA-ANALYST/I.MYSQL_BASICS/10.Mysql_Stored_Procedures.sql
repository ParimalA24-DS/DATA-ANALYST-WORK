-------------  STORED PROCEDURE in Mysql ----------
-- A stored procedure is a set of SQL statements that can be stored in the database and executed repeatedly. 
-- They help encapsulate complex business logic and can be called with a single call statement.
use  college;
show tables;
select *from emp;
DELIMITER $$
CREATE PROCEDURE emp_info()
Begin 
select *from emp order by manager_id;
end $$
call college.emp_info();# call to stored procedure from database
-- or 
call emp_info();

-- 2.ex:
DELIMITER $$
CREATE PROCEDURE course_info()
begin 
select * from course;
end $$
call college.course_info();

-- Using input and out and inoutparametes in stored procedure 
 delimiter $$
 create procedure get_empid(in p_name varchar(10))    #input from user
 begin
 SELECT id  from emp where name=p_name;
 end $$
 

 