use trackit;

select 
	task.taskid,
    task.title,
    taskstatus.name
from taskstatus
inner join task on taskstatus.taskstatusid = task.taskstatusid
where taskstatus.isresolved = 1;