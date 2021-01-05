use trackit; 

select * from taskstatus
where isresolved = 1;

-- TaskStatusIds are in order, so we can use between.
-- If they were out of sequence, we might use an IN (id1, id2, ... idn).
select *
from Task
where TaskstatusId between 5 and 8;