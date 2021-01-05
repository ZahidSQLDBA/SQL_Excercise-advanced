use trackit;

-- provide a project summary and change the duedate 
Update Project set 
	Summary = 'All lessons and exercises for the relational datab ase milestone.',
    DueDate = '2018-10-15'
Where projectId = 'db-milestone';

-- change kingdsly's LastName to 'Oaks'.
Update Worker Set
	LastName = 'Oaks'
Where WorkerId = 2;

select * 
from project;
select * 
from projectworker;
select *
from worker;