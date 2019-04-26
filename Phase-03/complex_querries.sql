
select blood_id
from blood
where doc IN ('23-03-2019','24-03-2019','25-04-2019');

select d.fname as donor_first_name, d.lname as donor_last_name
from donor as d, branch as b
where branch_id='BGM01' ;

select fname as first_name ,lname as last_name 
from staff_members
where branch_id='BGM02';

select fname ,lname
from recipient JOIN branch ON branch_id=rec_branch_id
where branch_id='BANG01';

select fname,lname
from staff_members NATURAL JOIN branch 
where branch_id='BANG02' ;

select fname ,lname
from recipient LEFT OUTER JOIN branch ON branch_id=rec_branch_id
where branch_id='BANG02';

select fname ,lname
from donor 
where don_event_id='blr01';

select fname ,lname
from donor 
where EXISTS (select * from donor where d_date='25-03-2019');

SELECT SUM (Salary), MAX (Salary), MIN (Salary), AVG (Salary)
FROM staff_members;

SELECT SUM (Salary) AS Total_Sal, MAX (Salary) AS Highest_Sal,
MIN (Salary) AS Lowest_Sal, AVG (Salary) AS Average_Sal
FROM staff_members;

SELECT SUM (Salary), MAX (Salary), MIN (Salary), AVG (Salary)
FROM (staff_members JOIN branch O)
WHERE Dname = ‘Research’;

#Analysis

select count(*)
from blood
where blood_type='A+' ;

select count(*)
from blood
where blood_type='A-' ;

select count(*)
from blood
where blood_type='AB+' ;

select count(*)
from blood
where blood_type='AB-' ;

select count(*)
from blood
where blood_type='B+' ;

select count(*)
from blood
where blood_type='B-' ;

select count(*)
from blood
where blood_type='O+' ;

select count(*)
from blood
where blood_type='O-' ;