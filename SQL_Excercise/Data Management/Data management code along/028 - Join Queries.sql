use trackit; 

select 
	Task.TaskId,
    Task.Title,
    TaskStatus.Name
From TaskStatus
Join Task on TaskStatus.TaskStatusId = Task.TaskStatusId -- INNER omitted
Where TaskStatus.IsResolved = 1;