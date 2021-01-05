use trackit;

select
	taskid,
	title,
    `Name`,
    TaskStatusId -- Thir will cause problems.
From TaskStatus
Inner Join Task On TaskStatus.TaskStatusId = Task.TaskStatusId
Where TaskStatus.IsResolved = 1;