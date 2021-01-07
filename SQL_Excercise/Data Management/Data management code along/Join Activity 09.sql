use personaltrainer;

/*
Select ExerciseCategory.Name and its parent ExerciseCategory's Name.

This requires a self-join.
12 rows
*/

Select 
	e1.Name
from exercisecategory as e1
inner join exercisecategory as e2 on e1.ExerciseCategoryId = e2.ParentCategoryId;

Select 
	count(e1.Name) as count
from exercisecategory as e1
inner join exercisecategory as e2 on e1.ExerciseCategoryId = e2.ParentCategoryId;