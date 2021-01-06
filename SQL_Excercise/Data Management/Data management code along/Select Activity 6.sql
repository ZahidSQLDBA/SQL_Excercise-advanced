use personaltrainer; 

-- Select Name and LevelId from the Workout table. (26 rows)

Select 
	workout.name,
	workout.levelId
From workout;

Select 
    count(workoutId) as count
From workout;