# where clause: filter rows depending on certain conditions
use college;
select *from faculty1;
# Q.1find faculty  id & name whose qualification is BE ?
select fid,fname from faculty1 where qualification='BE';	
# Q2.Find faculty whose qualification was not ph.d?
select  *from faculty1 where qualification !='PhD';
# Q3. Find students name CS ?
select  sname,branch  from students1 where branch='CS';
# Q4. Find students name CS andmarks<80? 
select  sname,marks  from students1 where branch='CS' and marks <80;

# Q4. Find students name CSor mech ?
select sname from students1 where branch ='CS' OR branch='Mech';
select sname,branch  from students1 where branch ='CS' OR branch='Mech';