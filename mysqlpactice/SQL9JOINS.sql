-- SQLJOINS:
-- JOINS:Method of linking two tables onevtable with another tablewith common column 
-- Types of JOins : 1.crosskjoins 2. inner joins3.left join 4.right join ,5.self join 
-- MYSQLdoes not support full outer join 
use college;
# 1.Crossjoin - return cartesian products of rows
# Q1.Perfrom crossjoin on faculty and dept table ?
select *from faculty1 cross join dept; # first tables rows multiply with each row in second table =6*3=18
# Q2.Perfrom crossjoin on faculty and dept table (but result shouldcontaindept 1 records ?
select *from faculty1 cross join dept where dept.deptid=1; 
 # INNER JOIN :Return only those rows that are in both tables 
 
#Q1Find departement name for each faculty ?
 
 select f.fname ,d.dname from faculty1 f inner join dept d on f.deptid=d.deptid;
#Q2 Find departement name for  faculty working indept id2 ?
select f.fname ,d.dname from faculty1 f inner join dept d on f.deptid=d.deptid 
where d.deptid=2;

-- LEFT JOIN :Allrowsfrom left and matching rows from right table 
select f.fname ,d.dname from faculty1 f left join dept d on f.deptid=d.deptid;
-- RIGHT JOIN :All rowsfrom right and matching rows from left table 
select f.fname ,d.dname from faculty1 f right join dept d on f.deptid=d.deptid;

-- SELF JOIN : used o jolin table itself 
select *from faculty1 ;
select f.fname, f.qualification from faculty1 f join faculty1 f2 on f.fid= f2.fid ;