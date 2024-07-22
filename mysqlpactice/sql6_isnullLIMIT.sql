-- LIMIT and ISNULL ?

/*  the LIMIT clause is used to restrict the number of rows returned by a query. 
It is particularly useful when you only need to retrieve a certain number of rows from a larger result set.*/
# limit offest ,count :offset from which row index number andcount howamny rows ?
# limit n directly return n number of rows.
# IS NULL : used to check whether values is null or not ? 
USE college;
# Q1.Find first first 4 records from a faculty table ?
SELECT *FROM faculty1 limit 4;

#Q2. Find 2nd row and 3row from a faculty table ?
select *from faculty1 limit 1,2;
# Q3. Find students names whose got second highest marks?
select *from students1 ;
insert into students1 values 
(7,'Pragati',null,89);

select  sname,marks from students1 order by marks desc ;
select  sname  from students1 order by marks desc limit 1,1; #shubham 95 marks

# Q4. Find stuents names whose are not allowted for any branch ? is null :
select  sname  from students1 where branch is null;


#Q5 Find student names whose allocated to at least one branch ?
 select  sname  from students1 where branch is not null;