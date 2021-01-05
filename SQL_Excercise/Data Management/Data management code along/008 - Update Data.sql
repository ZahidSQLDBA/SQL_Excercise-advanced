use trackit;

Update projectworker set
	workerid = '5'
Where workerId = 2;

-- disable safe updates.
set SQL_SAFE_UPDATES = 0;

-- deactivate active projects from 2017
Update project set 
	isActive = 0
Where DueDate between '2017-01-01' and '2017-12-31'
and IsActive = 1;

-- enable safe updates
set SQL_SAFE_UPDATES = 1;
