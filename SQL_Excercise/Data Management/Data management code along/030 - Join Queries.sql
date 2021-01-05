use trackit; 

select * from task;

select * from task
inner join TaskStatus on Task.TaskStatusId = TaskStatus.TaskStatusId;

select * from task
where TaskStatusId is null;