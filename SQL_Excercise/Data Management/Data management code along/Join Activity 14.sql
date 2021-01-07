use personaltrainer;

/*
The relationship between Workouts and Exercises is... complicated:

Workout links to WorkoutDay (one day in a Workout routine) which links to 
WorkoutDayExerciseInstance (Exercises can be repeated in a day so a bridge 
table is required) which links to ExerciseInstance (Exercises can be done with 
different weights, repetitions, laps, etc...) which finally links to Exercise.
Select Workout.Name and Exercise.Name for related Workouts and Exercises.
*/

Select 
	Workout.Name,
    Exercise.Name
from Workout
inner join WorkoutDay on WorkoutDay.WorkoutId = Workout.WorkoutId
inner join WorkoutDayExerciseInstance on WorkoutDayExerciseInstance.WorkoutDayId = WorkoutDay.WorkoutDayId
inner join ExerciseInstance on ExerciseInstance.ExerciseInstanceId = WorkoutDayExerciseInstance.ExerciseInstanceId
inner Join Exercise on Exercise.ExerciseId = ExerciseInstance.ExerciseId