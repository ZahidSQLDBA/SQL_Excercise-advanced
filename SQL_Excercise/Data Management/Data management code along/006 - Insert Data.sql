use trackit;

insert into project (ProjectId, `Name`, DueDate)
values ('Kitchen', 'Kitchen Remodel', '2025-07-15');

insert into projectworker (projectId, workerId) values
('db-milestone', 1), -- Rosemonde, Database
('kitchen', 2), -- Kingsly, Kitchen
('db-milestone', 3), -- Goldi, Database
('db-milestone', 4); -- Dorey, Database

select *
from project;

select * 
from projectworker;