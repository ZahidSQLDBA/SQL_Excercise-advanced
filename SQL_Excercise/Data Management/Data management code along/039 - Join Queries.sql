use trackit;

Select 
	Concat(w.FirstName, ' ', w.LastName) WorkerName,
    p.Name ProjectName
From worker w 
cross join project p
where w.WorkerId = 1
and p.projectid not like 'game-%';

select * from worker;
select * from project;