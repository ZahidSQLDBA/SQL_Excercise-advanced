use trackit; 

Select
	Task.TaskId,
	Task.Title,
    IFNULL(Task.TaskStatusId, 0) as TaskStatusId,
    IFNULL(TaskStatus.Name, '[None]') As StatusName
From Task
Left Outer Join TaskStatus
	On Task.TaskStatusId = TaskStatus.TaskStatusId; 