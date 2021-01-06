use trackit;

/*
-- does not work
select *
From task
inner join task on task.taskid = task.ParentTaskId;
*/

select 
	parent.taskId ParentTaskId,
    child.TaskId ChildTaskId,
    concat(parent.Title, ': ', child.Title) Title
From Task parent
inner join Task child on parent.TaskId = child.ParentTaskId;