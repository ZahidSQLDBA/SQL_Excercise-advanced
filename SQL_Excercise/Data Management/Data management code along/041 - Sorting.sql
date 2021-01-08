use trackit;

Select 
	w.FirstName,
    w.LastName,
    p.Name ProjectName
From Worker w
Inner Join ProjectWorker pw ON w.WorkerId = pw.WorkerId
Inner Join Project p ON pw.ProjectId = p.ProjectId
Order By w.LastName ASC, p.Name ASC;

Select
	w.FirstName,
	w.LastName,
    p.Name ProjectName
From Worker w
Inner Join ProjectWorker pw ON w.WorkerId = pw.WorkerId
Inner Join Project p ON pw.ProjectId = p.ProjectId
Order By w.LastName DESC, p.Name ASC;