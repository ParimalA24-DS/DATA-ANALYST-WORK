-- LIKE operator : To search or match patterns. % & _ are two wild ards
-- %:matches zero or sinle character 
-- _: matches exctly single character 
use college;
# Q1. Find facutly details whose names Starts with LETTER A?
select *from faculty1 where fname like 'A%';
# Q2. Find faculty details whose name ends with N?
select *from faculty1 where fname like '%N';
# Q3 Find students marks whose name contains letter A as second letter ? or o
select sname ,marks  from students1 where sname like '_A%'; #baby 
select *from students1;
select sname from students1 where sname like '_h%';  # shubham, shilpa,chaya

#  Q4 Find students marks whose name contains start with letter P and contains only 7 letters in name?
select sname from students1 where sname like 'p____%';  # 
# Q5 Find faculty names   whose not ends with N?
select fname from facutly  where sname not like '%n';  # 

# Q6 Find students details  whose name does not  contains second  letter A ?
select sname ,marks  from students1 where sname not  like '_A%'; #