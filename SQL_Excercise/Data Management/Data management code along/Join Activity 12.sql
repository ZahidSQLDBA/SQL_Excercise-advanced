use personaltrainer;

/*
Which Beginner-Level Workouts satisfy at least one of Shell Creane's Goals?

Goals are associated to Clients through ClientGoal.
Goals are associated to Workouts through WorkoutGoal.
6 rows, 4 unique rows
*/

select *
from Goal
inner join clientgoal on clientgoal.GoalId = goal.GoalId 
inner join client on client.ClientId = clientgoal.ClientId
inner join workoutgoal on workoutgoal.GoalId = goal.GoalId
inner join workout on workout.WorkoutId = workoutgoal.WorkoutId
where Client.FirstName = 'Shell' and Client.LastName = 'Creane' and workout.levelId = 1