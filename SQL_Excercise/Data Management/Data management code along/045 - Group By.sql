use trackit;

select 
	IFNULL(s.Name, '[None]') StatusName,
    Count(t.TaskId) TaskCount
From Task t
Left Outer Join TaskStatus s ON t.TaskStatusId = s.TaskStatusId
Group by s.Name
Order by s.Name;

-- Should not work.
select 
	IFNULL(s.Name, '[None]') StatusName,
    s.IsResolved,
    Count(t.TaskId) TaskCount
From Task t
Left Outer Join TaskStatus s ON t.TaskStatusId = s.TaskStatusId
Group by s.Name
Order by s.Name;
-- but seems to work without problem, however it appears some server might give error message

Select 
	IFNULL(s.Name, '[None]') StatusName,
    IFNULL(s.IsResolved, 0) IsResolved,
    Count(t.TaskId) TaskCount
From Task t
Left Outer Join TaskStatus s ON t.TaskStatusId = s.TaskStatusId
Group by s.Name, s.IsResolved -- IsResolved is not part of the Group
Order by s.Name;

select distinct 
	p.Name ProjectName,
    p.ProjectId
From Project p
inner join Task t on p.ProjectId = t.ProjectId
Order by p.Name;

select 
	p.Name ProjectName,
    p.ProjectId
From Project p
inner join Task t on p.ProjectId = t.ProjectId
Group by p.Name
Order by p.Name;