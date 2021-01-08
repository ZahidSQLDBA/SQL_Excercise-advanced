use trackit; 

select 
	p.Name projectName, 
    min(t.DueDate) minTaskDueDate
from project p
inner join task t on p.projectID = t.projectID
where p.ProjectId Like 'game-%'
	and t.ParentTaskId is not null
Group by p.ProjectId, p.Name
Order by p.Name;

Select 
	p.Name projectName,
    min(t.DueDate) minTaskDueDate,
    max(t.DueDate) maxTaskDueDate,
    sum(t.EstimatedHours) totalHours,
    avg(t.EstimatedHours) averageTaskHours,
    count(t.TaskId) TaskCount
From Project p
inner join Task t on p.ProjectId = t.ProjectId
where t.ParentTaskId is not null
group by p.ProjectId, p.Name
Having Count(t.TaskId) >= 10
Order by Count(t.TaskId) DESC, p.Name;