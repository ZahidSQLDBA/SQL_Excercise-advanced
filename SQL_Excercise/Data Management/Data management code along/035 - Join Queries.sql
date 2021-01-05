use Trackit;

Select 
	Project.Name ProjectName,
    Worker.FirstName,
    Worker.LastName
From Project
Right Outer Join ProjectWorker on project.projectid = projectworker.projectid
right outer join worker on projectworker.workerid = worker.workerid
where projectworker.projectid is null;
-- where projectworker.projectid is null;
-- where projectworker.workerid is null; // this works as well. why? 
-- (the query seeks for worker where project id is null, in other works if worker had project, they wouldn't show up in the first place)
