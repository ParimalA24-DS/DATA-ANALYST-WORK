use college;
#IN operator : It allows you to check if a value matches any value in a list. Behave LileOR operator 
# Q1.Find faculty names whose are from dept 1 or 3?
select *from faculty1;
SELECT fname from faculty1 where deptid= 1 or deptid=3 ;      # or you can use IN
SELECT fname from faculty1  where deptid IN (1,3);
#IN &OR : DIFFERENCES -If you need to check for exact matches against a specific list of values, IN is preferred. However, 
# if you require more complex logical conditions, OR is more suitable.

#Q2.Find faculty details having either following qualifications? BE &PHD 

SELECT  *from faculty1 Where qualification  IN  ('BE','PhD');

# Q3 Find students details whose are not from MecgH and CS?
select *from students1 where branch not in ('Mech','CS');