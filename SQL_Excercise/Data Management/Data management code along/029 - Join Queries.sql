use trackit;

Select
	Project.Name,
    Worker.FirstName,
    Worker.LastName
From Project
inner join ProjectWorker on Project.ProjectId = ProjectWorker.ProjectId
inner join Worker on ProjectWorker.WorkerId = Worker.WorkerId
where Project.ProjectId = 'game-goodboy';