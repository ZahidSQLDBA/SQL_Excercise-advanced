use trackit;

Select 
	concat(w.FirstName, ' ', w.LastName) WorkerName,
    SUM(t.EstimatedHours) TotalHours
From Worker w
inner join ProjectWorker pw ON w.WorkerId = pw.WorkerId
inner join Task t ON pw.WorkerId = t.WorkerId
	and pw.ProjectId = t.ProjectId
Group By w.WorkerId, w.FirstName, w.LastName;

Select 
	concat(w.FirstName, ' ', w.LastName) WorkerName,
    SUM(t.EstimatedHours) TotalHours
From Worker w
inner join ProjectWorker pw ON w.WorkerId = pw.WorkerId
inner join Task t ON pw.WorkerId = t.WorkerId
	and pw.ProjectId = t.ProjectId
Group By w.WorkerId, w.FirstName, w.LastName
Having SUM(t.EstimatedHours) >= 100
Order By SUM(t.EstimatedHours) DESC;
