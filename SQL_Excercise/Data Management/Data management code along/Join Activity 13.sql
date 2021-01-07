use personaltrainer;

/*
Select all Workouts.

Join to the Goal, 'Core Strength', but make it optional.
You may have to look up the GoalId before writing the main query.
If you filter on Goal.Name in a WHERE clause, Workouts will be excluded. Why? 
(Because it only shows where Goal.Name = 'Core Strength' and omits everything else)
26 Workouts, 3 Goals
*/
select *
from Workout
inner join workoutgoal on workout.WorkoutId = workoutgoal.WorkoutId
left outer join Goal on Goal.GoalId = workoutgoal.GoalId;

-- 26 worksouts and 3 goals each. Not certain if that is what the question is asking for