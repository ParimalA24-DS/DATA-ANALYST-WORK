create database college;
use college ;
show databases;
drop table faculty1;
drop table students1;
drop table dept;
#fiirst table :
create table faculty1(
fid int ,
fname varchar(15),
qualification varchar(100),
deptid int);
#second table:
create table students1(
sid int ,
sname varchar(15),
branch varchar(20),
marks int );

#thirdtable :
create table dept(
deptid int ,
dname varchar(20));

#datainsert :
insert into faculty1 
values( 1,'AMAN','BE',1);
insert into faculty1 values
(2,'Mohan','ME',1),
(3,'Sita','ME',1),
(4,'Gita','PhD',2),
(5,'Gourav','PhD',2),
(6,'Abhay','BE',3) ;

SELECT *FROM faculty1;

#
insert into students1 
values (1,'shubham','Civil',95);
insert into students1 
values (2,'Shilpa','CS',96),
(3,'Ajay','Mech',56),
(5,'Baby','CS',60),
(6,'chaya','EE',85);
SELECT *FROM students1;
select  *from studnets  where branch='civil';
insert into dept values
(1, 'CS'),
(2,'EE'),
(3,'Civil'),
(4,'Mech');



select *from faculty  

