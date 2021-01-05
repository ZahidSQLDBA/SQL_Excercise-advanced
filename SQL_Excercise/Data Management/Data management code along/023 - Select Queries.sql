use consumercomplaints;

select
	ComplaintId,
	DateReceived,
    datesenttocompany,
    (datesenttocompany - DateReceived) as DateDifference
from Complaint
where (datesenttocompany - DateReceived) > 365;