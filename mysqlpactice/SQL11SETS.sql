-- SET :UNION,UNIONALL ,INTERSECT 
-- Joins combine rows from different tables based on a related column, 
-- while sets perform operations on entire result sets from multiple SELECT statements.

use college;
-- UNION OR UNIONALL
# Q1 .Find all names of faculty  and students?
SELECT fname FROM faculty1
UNION
SELECT sname FROM students1;
insert  into students1 values
(7,'Mohan',Civil ,52);
SELECT * FROM students1;
SELECT fname FROM faculty1
UNION
SELECT sname FROM students1;
SELECT fname FROM faculty1
UNION all
SELECT sname FROM students1;
#Q2. Find unique names of faculty  and students?
SELECT fname FROM faculty1
UNION
SELECT sname FROM students1;
#Q3. Find common names of faculty  and students?
select distinct  fname from faculty1 
where fname in (select sname from students1);
#Q4. Find  students names who  is not  allocated to any departemnt ?

-- minus operator :

