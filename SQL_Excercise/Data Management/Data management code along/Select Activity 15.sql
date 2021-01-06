use personaltrainer;

-- Select Name and Notes of each level 3 Workout that contains the word 'you' in its Notes. (4 rows)

Select
	Name,
    Notes
From Workout
where levelId = 3 and Notes like '%you%';

Select
	Count(Name) as Count
From Workout
where levelId = 3 and Notes like '%you%';