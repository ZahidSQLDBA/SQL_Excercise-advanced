use personaltrainer;

/*
Select Names from Workouts and their Goals.

This is a many-to-many relationship with a bridge table.
Use aliases appropriately to avoid ambiguous columns in the result.
--------------------------------------------------------------------------------------------------
-- This is likely two different Query task. Combination of the two does cannot result in 500 rows
--------------------------------------------------------------------------------------------------
Select FirstName and LastName from Client.
Select ClientId and EmailAddress from Login.
Join the tables, but make Login optional.
500 rows
*/

Select
	workout.name as WorkOutName,
    goal.name as GoalName
From workout
inner join workoutgoal on workoutgoal.workoutId = workout.workoutId
inner join goal on goal.goalId = workoutgoal.goalId;

Select
	Client.FirstName as FirstName,
    Client.LastName as LastName,
    Login.ClientId as ClientId,
    Login.EmailAddress as EmailAddress
From client 
left outer join Login on Login.ClientId = Client.ClientId;

Select
    Count(Client.ClientId) as Count
From client 
left outer join Login on Login.ClientId = Client.ClientId;