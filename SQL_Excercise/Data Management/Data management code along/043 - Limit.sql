use trackit;

Select *
From Worker
Order By LastName DESC
Limit 0, 10;

Select *
From Worker
Order By LastName DESC
Limit 10, 10;

Select *
From Worker
Order By LastName DESC
Limit 200, 10;

Select 
	w.FirstName,
    w.LastName,
    p.Name ProjectName
From Worker w
inner join ProjectWorker pw ON w.WorkerId = pw.WorkerId
inner join Project p ON pw.ProjectId = p.ProjectId
Order By w.LastName DESC, p.Name ASC
LIMIT 100, 25;