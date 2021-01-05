use consumercomplaints;

select datereceived, product, issue, company
from Complaint
where State = 'LA';

select *
from complaint
where state = 'LA'
and (product = 'Mortgage' or product = 'debt collection');

select *
from complaint
where State = 'LA'
and product = 'mortgage' or product = 'debt collection';