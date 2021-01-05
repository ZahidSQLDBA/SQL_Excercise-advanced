use trackit; 

select taskid, title, `Name`
from taskstatus
inner join task on taskstatus.taskstatusid = task.taskstatusid
where taskstatus.isresolved = 1;

select 
	task.taskid,
    task.title,
    taskstatus.Name
from taskstatus
inner join task on taskstatus.taskstatusid = task.taskstatusid
where taskstatus.isresolved = 1;
