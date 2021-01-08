use trackit;

-- Count TaskIds, 543 values
select count(TaskId)
From Task;

-- Count everything, 543 values
select count(*)
From Task;

-- 532
select count(TaskStatusId)
From Task;

Select 
	count(t.TaskId)
From Task t
inner join TaskStatus s ON t.TaskStatusId = s.TaskStatusId
where s.IsResolved = 1;