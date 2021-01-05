use trackit;

insert into Project (ProjectId, `Name`, DueDate)
	values ('db-milestone', 'Database Material', '2018-12-31');

/*
-- incorrect example
insert into ProjectWorker (ProjectId, WorkerId) 
	values ('db-milestone', 75); -- should cause error (foreign key constraint violation)
*/

-- correct example 
insert into ProjectWorker (ProjectId, WorkerId) 
	values ('db-milestone', 2); 