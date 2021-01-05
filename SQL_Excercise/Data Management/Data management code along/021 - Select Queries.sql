use consumercomplaints;

-- doesn't work
select * from complaint
where subproduct = null; -- but neither does this! select * from complanit where subproduct != NULL;

-- doesn't complain, but doesn't find anything.
select *
from complaint
where complaintId between 15000 and null;

-- nope.
select * from complaint
where SubIssue in ('Account status', null); -- note. this sorta works, but does not show subissue null