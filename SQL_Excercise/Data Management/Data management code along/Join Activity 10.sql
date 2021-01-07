use personaltrainer;

/*
Rewrite the query above so that every ExerciseCategory.Name is included, even if it doesn't have a parent.

16 rows
*/

Select 
	e1.Name
from exercisecategory as e1;

Select 
	count(e1.Name) as count
from exercisecategory as e1;