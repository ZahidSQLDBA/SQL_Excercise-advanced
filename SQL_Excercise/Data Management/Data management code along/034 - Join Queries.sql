Use Trackit;

Select 
	Project.Name ProjctName,
	Worker.FirstName,
    Worker.LastName
From Project
left outer join projectworker on project.projectid = projectworker.projectid
left outer join worker on projectworker.workerid = worker.workerid
where projectworker.workerid is null; -- throws out projects with workers. 

-- Project without workers, we only need the bridge table to confirm
Select 
	Project.Name ProjectName
From Project
Left Outer Join ProjectWorker On Project.ProjectId = ProjectWorker.ProjectId
Where ProjectWorker.WorkerId is Null;