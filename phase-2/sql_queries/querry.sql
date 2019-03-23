select fname,lname
from donor,blood
where (blood_id = 'ambB01' and blood_id=don_blood_id);

select B.city
from donor as D,branch as B
where (D.don_id = '01' and B.branch_id='BANG01');

select D.fname,D.lname,D.address,D.contact_no
from donor as D,blood as B
where (B.blood_id='bilB03' and B.blood_id=D.don_blood_id); 

select B.city,B.address,B.contact_no,EV.e_date,EV.venue
from branch as B,blood as BL, don_program as EV, donor as D
where (BL.blood_id='nikB05' and BL.blood_id=D.don_blood_id and D.don_branch_id=B.branch_id and EV.branch_id=B.branch_id);

select fname,lname address
from recipient,blood
where blood_id='ambB01' and rec_blood_id=blood_id; 

select blood_id
from blood
where doe<'23-05-2019';

select B.branch_id,B.city,B.address,BL.blood_type
from branch as B,recipient as R,blood as BL
where BL.blood_id='ambB01' and R.rec_blood_id=BL.blood_id and R.rec_branch_id=B.branch_id;

select ST.fname,ST.lname,ST.address
from staff_members as ST,branch as B
where B.branch_id='BANG02' and B.branch_id=ST.branch_id;

select P.quantity,R.amt_paid
from blood as B, provides as P , recipient as R
where B.blood_id='carB09' and R.rec_blood_id=B.blood_id and P.rec_id=R.rec_id;
