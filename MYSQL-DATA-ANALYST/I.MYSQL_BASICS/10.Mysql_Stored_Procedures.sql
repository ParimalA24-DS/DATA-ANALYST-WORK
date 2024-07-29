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
 CALL get_empid('bob');  #102
 -- out : return result in variable form 
 delimiter $$
 create procedure get_sum_students1(in p_name varchar(50), out p_sum int)    #input from user
 begin
 SELECT sum(newage) into p_sum from students2 
 where name=p_name;
 end $$ 
 -- CALL 
  set @p_sum = 0;
call college.get_sum_students('asha', @p_sum);
select @p_sum;
-- ---------------------------------
-- Drop procedure 
DROP PROCEDURE IF EXISTS get_sum_students1;
DROP PROCEDURE IF EXISTS get_sum_students;

