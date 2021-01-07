use personaltrainer;

/*
An ExerciseInstance is configured with ExerciseInstanceUnitValue.

It contains a Value and UnitId that links to Unit.

Example Unit/Value combos include 10 laps, 15 minutes, 200 pounds.
Select Exercise.Name, ExerciseInstanceUnitValue.Value, and Unit.Name for the 'Plank' exercise.

How many Planks are configured, which Units apply, and what are the configured Values?
4 rows, 1 Unit, and 4 distinct Values
*/

Select
	Exercise.Name,
    ExerciseInstanceUnitValue.Value,
    Unit.Name as Unit
From Exercise
inner join exerciseinstance on exerciseinstance.ExerciseId = exercise.ExerciseId
inner join exerciseinstanceunitvalue on exerciseinstanceunitvalue.ExerciseInstanceId = exerciseinstance.ExerciseInstanceId
inner join unit on unit.UnitId = exerciseinstanceunitvalue.UnitId
where Exercise.Name = 'Plank';