use trackit; 

Select 
	p.Name ProjectName,
    p.ProjectId
From Project p
inner join Task t ON p.ProjectId = t.ProjectId
Order By p.Name;

Select distinct
	p.Name ProjectName,
    p.ProjectId
From Project p
inner join Task t on p.ProjectId = t.ProjectId
Order By p.Name;