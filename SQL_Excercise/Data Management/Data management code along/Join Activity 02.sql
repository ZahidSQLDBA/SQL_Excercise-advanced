use personaltrainer;

/*
Select ExerciseCategory.Name and Exercise.Name where the ExerciseCategory does not have a ParentCategoryId (it is null).

Again, join the tables on their shared key (ExerciseCategoryId).
9 rows
*/

select 
	exercisecategory.name,
    exercise.name
from exercisecategory
inner join exercise on exercisecategory.ExerciseCategoryId = exercise.ExerciseCategoryId
where exercisecategory.ParentCategoryId is null;

select 
	count(exercisecategory.ExerciseCategoryId) as count
from exercisecategory
inner join exercise on exercisecategory.ExerciseCategoryId = exercise.ExerciseCategoryId
where exercisecategory.ParentCategoryId is null;