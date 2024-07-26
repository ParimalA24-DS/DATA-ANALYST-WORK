-- string functions in mysql : 
-- 1. concat()
use mysqldemo;
select *from student_t;

SELECT 
    student_name, 
    course_name, 
    CONCAT(student_name, ' ', course_name) AS student_course 
FROM 
    student_t;
    select stud_id ,concat(student_name, ' _', course_name) as studentcourse
    from student_t;
    -- 2. CONCAT_WS():
    SELECT concat_ws('-','ABC','BCD','EFG');
    -- OR
    SELECT 
    student_name, 
    course_name, 
    CONCAT_WS(' -',student_name, course_name) AS student_course 
FROM 
    student_t;
SELECT 
    student_name, 
    course_name, 
    CONCAT_WS(' :',stud_id,student_name, course_name) AS student_course 
FROM 
    student_t;
    -- 3. Substring('word',1,3): extract 1 letter to 3rd letter : wor
    select substring('word',1,3);
    select substring('hello',1,3); #output hel
    select student_name ,substring(student_name,1,2) from student_t; 
    
    -- 4.replace(string,from_str, to_str):
    select replace('hey girls', 'hey' ,'hello') as girls; # hey girls to hello girls 
    
    select replace('ABCDPQR','PQR','PR')AS QWE;
    select *FROM student_t;
    select course_name,replace(stud_id,1,10) as newemp from student_t;
    -- 5.reverse()
    select reverse('hello') as reversestr;
    select reverse('hi') as rev;
    
    select stud_id ,course_name, reverse(course_name) as revstr from student_t;
    -- 6. upper() ,lower()
    select upper('cdfg') as upperl;
    select lower('ABCD') AS LOWERL;
    select ucase('cfg') ;
    select lcase('ABC');
    
    SELECT stud_id, student_name,upper(student_name) ,lower(student_name) from student_t;
    
        -- 7.CHAR_LENGTH()
    select char_length('abc');
    select char_length('hello hey'); #space also calculates 
    select student_name ,char_length(student_name)as length from student_t;
     select student_name,course_name ,char_length(course_name)as courselength from student_t;
     
     select *from student_t where char_length(student_name)=4 ;
     -- 8. trim() ,left() right() 
     -- 9. insert() - specificpostion ad words or letters 
     -- 10. repeat() repapet wordsmany times 
     
     -- EXCERCISE :
     select stud_id, concat_ws(':',stud_id,student_name)as concatcolon from student_t;
     
    select stud_id, concat_ws(':',stud_id,concat(student_name,' ',course_name),email)as concatf from student_t;
     select stud_id, concat_ws(':',stud_id,ucase(course_name),email)as c from student_t;
     
     select stud_id ,concat(left(course_name,1),stud_id) as adding from student_t;
     select stud_id ,concat(right(course_name,1),stud_id) as studidadding from student_t;
