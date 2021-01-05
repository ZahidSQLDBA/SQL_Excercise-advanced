use TrackIt;

Select 
	Project.Name as ProjectName, -- an alias makes this more clear.
	Worker.FirstName,
    Worker.LastName
From Project
Left Outer Join ProjectWorker On Project.ProjectId = ProjectWorker.ProjectId
Left Outer Join Worker On ProjectWorker.WorkerId = Worker.WorkerId;