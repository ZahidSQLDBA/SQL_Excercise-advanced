use personaltrainer;

/*
What are the Goals of the Workout with the Name 'This Is Parkour'?

You need three queries!

Select the WorkoutId from Workout where Name equals 'This Is Parkour'. (1 row)
Select GoalId from WorkoutGoal where the WorkoutId matches the WorkoutId from your first query. (3 rows)
Select everything from Goal where the GoalId is one of the GoalIds from your second query. (3 rows)
*/
Select 
	WorkoutId
From Workout
where Name = 'This Is Parkour';

-- WorkoutId = 12

Select
	GoalId
From workoutgoal
where WorkOutId = 12;

Select
	Count(GoalId) as Count
From workoutgoal
where WorkOutId = 12;

Select *
From Goal
Where GoalId = 3 or GoalId = 8 or GoalId = 15;