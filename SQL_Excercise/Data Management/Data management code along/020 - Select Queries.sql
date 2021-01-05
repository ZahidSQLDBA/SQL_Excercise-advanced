use ConsumerComplaints;

Select Product, Issue, Company, ResponseToConsumer
From Complaint
Where ConsumerDisputed = 1
and ConsumerConsent = 1
and product not in ('Mortgage', 'Debt collection');