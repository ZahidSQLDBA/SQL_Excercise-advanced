use consumercomplaints;

Select * from complaint
where subproduct is null; 

select * from complaint where subproduct is not null;

select * from complaint
where subissue = 'Account status' or subissue is null;

-- all complaints with a value for complaintnarrative
-- exclue null values
select * 
from complaint
where complaintnarrative is not null;