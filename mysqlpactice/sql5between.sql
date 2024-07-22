-- BETWEEN &NOT BETWEEN Operator :
-- Between operator is used to filter data and allowsto specify range values of test .
-- Not Between : is used filter data 
use college;
# Q1.Find student sdetails whose marks are between 60 and95 ?
select *from students1 where marks between 60 and 95;
#Q2. Find students detail whosemarksare not between 50 and60 ? 
select *from students1 where marks not between 50 and 60;
select *from students1 where marks not between 50 and 60;