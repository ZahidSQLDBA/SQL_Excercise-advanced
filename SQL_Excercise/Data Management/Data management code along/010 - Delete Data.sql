use trackit;

/* -- code does not work due to foreign key restriction
delete from worker
where workerid = 5;
*/


/*
-- code that works around safe update restriction still does not work due to references from projectworker
set SQL_SAFE_UPDATES = 0;

delete from worker 
where workerid = 5;

set SQL_SAFE_UPDATES = 1;
*/

-- code that works
set SQL_SAFE_UPDATES = 0;

-- delete tasks first 
delete from task
where workerid = 5;

-- delete projectworker next, which removes Kingsly from all projects
delete from projectworker
where workerid = 5;

-- finally, remove panchito

delete from worker 
where workerid = 5;

set SQL_SAFE_UPDATES = 1;

select * from worker;
select * from projectworker;
select * from task;