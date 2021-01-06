use personaltrainer;

-- Select the Name of each ExerciseCategory that has a parent (ParentCategoryId value is not null). (12 rows)

Select 
	Name
From exercisecategory
Where ParentCategoryId is not null;

Select 
	count(Name) as Count
From exercisecategory
Where ParentCategoryId is not null;