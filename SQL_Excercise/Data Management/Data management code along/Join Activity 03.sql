use personaltrainer;

/*
The query above is a little confusing. At first glance, it's hard to tell which Name belongs to ExerciseCategory and which belongs to Exercise.

Rewrite the query using aliases:

Alias ExerciseCategory.Name as 'CategoryName'.
Alias Exercise.Name as 'ExerciseName'.
9 rows
*/

select 
	exercisecategory.name as CategoryName,
    exercise.name as ExerciseName
from exercisecategory
inner join exercise on exercisecategory.ExerciseCategoryId = exercise.ExerciseCategoryId
where exercisecategory.ParentCategoryId is null;

select 
	count(exercisecategory.ExerciseCategoryId) as count
from exercisecategory
inner join exercise on exercisecategory.ExerciseCategoryId = exercise.ExerciseCategoryId
where exercisecategory.ParentCategoryId is null;