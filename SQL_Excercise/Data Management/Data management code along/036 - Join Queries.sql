use Trackit; 

-- Workers without a project

Select 
	Worker.FirstName,
	Worker.LastName
From ProjectWorker
Right Outer Join Worker On ProjectWorker.WorkerId = Worker.WorkerId
Where ProjectWorker.WorkerId is Null;

Select 
	Worker.FirstName,
	Worker.LastName
From Worker
Left Outer Join ProjectWorker On Worker.WorkerId = ProjectWorker.WorkerId
Where ProjectWorker.WorkerId is Null;