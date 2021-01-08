use trackit;

Select *
From Worker
Order By LastName;

-- sort acending by LastName
-- ASC isn't strictly required since it is the default sort direction.
Select *
From Worker
Order By LastName ASC;

Select *
From Worker
Order By LastName DESC;

Select
	w.FirstName,
	w.LastName,
    p.Name ProjectName
From Worker w
Inner Join ProjectWorker pw ON w.WorkerId = pw.WorkerId
Inner Join Project p On pw.ProjectId = p.ProjectId
Order by w.LastName ASC;