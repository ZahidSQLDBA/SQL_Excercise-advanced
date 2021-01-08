use trackit;

select 
	t.Title,
    s.Name StatusName
From Task t
left outer join TaskStatus s On t.taskstatusID = s.taskstatusID
Order By s.Name ASC;

-- Results are sorted non-null to null, then by TaskStatus.Name.
-- That puts NULL values last.
Select
	t.Title,
    s.Name StatusName
From Task t
Left Outer Join TaskStatus s ON t.TaskStatusId = s.TaskStatusId
Order by ISNULL(s.Name), s.Name ASC;