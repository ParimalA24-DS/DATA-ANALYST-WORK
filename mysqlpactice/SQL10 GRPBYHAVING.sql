-- GROUP BY &HAVING Clause:
-- GROUP BY : used to group rows based on certain columns and perform aggregate functions on each group.
-- HAVING :used to filter groups of rows based on aggregate values.After grouping you canuse having clause 

use college;
-- GROUP BY WITH WHERE 
# Q1.Find total number of students in each branch ?
select *from students1;
SELECT branch, COUNT(*) 
FROM students1 
GROUP BY branch;


#Q2. Find total marks of each branch ? 
SELECT branch, sum(marks) 
FROM students1 
GROUP BY branch;

# Q3 . Find average marks of each branch having brach CS and EE ?
select branch ,avg(marks)from students1 group by branch ;
select branch ,avg(marks)from students1 group by branch  having branch in ('cs','ee');