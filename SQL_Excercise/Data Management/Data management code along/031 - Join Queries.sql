use TrackIt;

Select *
From Task
Left Outer Join TaskStatus
	On Task.TaskStatusId = TaskStatus.TaskStatusId;

Select *
From Task
Right Outer Join TaskStatus
	On Task.TaskStatusId = TaskStatus.TaskStatusId;
    