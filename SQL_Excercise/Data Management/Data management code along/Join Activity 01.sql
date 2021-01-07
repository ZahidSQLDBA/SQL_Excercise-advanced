use personaltrainer;

/*
Select all columns from ExerciseCategory and Exercise.

The tables should be joined on ExerciseCategoryId.
This query returns all Exercises and their associated ExerciseCategory.
64 rows
*/

select *
from exercisecategory
inner join exercise on exercisecategory.exercisecategoryId = exercise.exercisecategoryId;

select 
	count(exercisecategory.exercisecategoryId) as count
from exercisecategory
inner join exercise on exercisecategory.exercisecategoryId = exercise.exercisecategoryId;