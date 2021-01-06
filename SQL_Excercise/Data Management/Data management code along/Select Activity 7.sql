use personaltrainer; 

-- Select Name, LevelId, and Notes from Workout where LevelId is 2. (11 rows)

Select 
	name,
    levelId,
    notes
From workout
where levelId = 2;

select 
	count(levelId) as count
from workout
where levelId = 2;