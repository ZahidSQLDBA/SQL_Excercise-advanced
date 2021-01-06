use Trackit;

Select 
	p.Name ProjectName,
    w.FirstName,
    w.LastName,
    t.Title
From Project p
inner join ProjectWorker pw on p.ProjectId = pw.ProjectId
inner join Worker w on pw.workerId = w.WorkerId
inner join Task t on pw.projectId = t.ProjectId
	and pw.WorkerId = t.WorkerId
where p.ProjectId = 'game-goodboy';