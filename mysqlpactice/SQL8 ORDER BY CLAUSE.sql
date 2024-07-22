-- ORDER BY CLAUSE :use sort the result for ascending and decending
-- By deault is ascending order
# Q1 Find the student details and sort the result by studnetname and ascending order ?
select *from students1 order by sname; # by default it is ascending order 
select *from students1 order by sname asc ;

# Q2 Find the studentdetails   and sort the result by studnet marks and descending order ?
select *from students1 order by marks desc ;
select *from students1 order by marks desc limit 2 ;#practice 
# Q3  Find the studentdetails   and sort the result by student name by ascending order  studnet marks and descending order ?
select *from students1 order by  sname asc , marks desc ;
select *from students1 order by  sname desc , marks asc;
#Q4  Find the faculty details   and sort the result by qualification by following order :(ME,PhD,BE)?

select *from faculty1 order by field(qualification ,'ME','PhD','BE');

